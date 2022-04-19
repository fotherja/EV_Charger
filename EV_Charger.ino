/* EV Charger software
 * 
 *  At Power On:
 *    1) Ensure relays are open, configure PWM and ADC for running in the background
 *    2) Perform GFCI Test - if unsuccessful...
 *    3) Enter State_A
 *  
 *  Status A: (No vehicle present) CP: DC +12v          - 
 *  Status B: When a vehicle is plugged in, a diode and resistor pull the DC +12v down to about +9v. We then start our 1khz PWM signal
 *  Status C: When a vehicle is ready and wants to charge it'll pull the positive side of the PWM down further to 6v. This prompts us to close the relays
 *  Status D: Ventilation 3v
 *   
 *   We use timer 1 to output our DC voltages and PWM all in one. 
 *   We synchronise our ADC readings to read the low and high PWM regions and we continuously read the GFCI ADC 
 *   We wait in State A and proceed through the states as specified
 *   
 *   If a GFCI is at anypoint detected we open the relays.
 *   
 *   To Do:
 *    - After a GF error. Reset after 15 minutes up to 4 times.
 *    - After a standard fault, reset after 15 minutes indefintely
 */

// Pin definitions
#define         Relay_1_Pin                 7
#define         Relay_2_Pin                 8
#define         Pilot_PWM_Pin               10
#define         GFCI_Test_Pin               11
#define         Indicator_LED               13

#define         GFCI_ADC_Pin                A0
#define         Pilot_ReadADC_Pin           A1

// State and fault definitions
#define         STATE_A                     1                                   // No EV connected
#define         STATE_B                     2                                   // EV Connected but not charging
#define         STATE_C                     3                                   // Charging

#define         _12_VOLTS                   12
#define         _9_VOLTS                    9
#define         _6_VOLTS                    6
#define         _3_VOLTS                    3
#define         _DIODE_FAULT                1
#define         _FAULT                      0

#define         FAIL                        0
#define         PASS                        1
#define         STARTUP_GFCI_TEST_FAIL      2
#define         GFCI_DETECT                 3
#define         DIODE_FAULT                 4
#define         VOLTAGE_CLASS_FAULT         5
#define         START_CHARGE_GFCI_TEST_FAIL 6


// ADC ranges for classifying voltage levels (923 = 12v and 285 = -12v)
#define         POS_12V_MAX                 936                                 // 12.5V
#define         POS_12V_MIN                 910                                 // 11.5V
#define         POS_9V_MAX                  868                                 // 10V        
#define         POS_9V_MIN                  815                                 // 8V
#define         POS_6V_MAX                  789                                 // 7V
#define         POS_6V_MIN                  735                                 // 5V
#define         POS_3V_MAX                  708                                 // 4V  
#define         POS_3V_MIN                  656                                 // 2V
#define         NEG_12V_MAX                 327            
#define         NEG_12V_MIN                 245

#define         GFCI_FAULT_THRESHOLD        250
#define         GFCI_FAULT_ABORT_THRESHOLD  1000                                // If it's taking longer than this to test our GFCI it's clearly failing to work
#define         FAULT_COUNT_THRESHOLD       100

// Global variable definitions
volatile int Pilot_Low_ADC;
volatile int Pilot_High_ADC;
volatile int GFCI_ADC;

volatile byte ADC_Channel = 0;

void Close_Relays();
void Open_Relays();
byte Read_Pilot_Voltage();
byte GFCI_Test();
void Fault_Handler(byte Fault_type);

//  ######################################################################################################
//  ------------------------------------------------------------------------------------------------------
//  ######################################################################################################
void setup() {
  delay(1000);  
  noInterrupts(); 
  
  Serial.begin(115200);
  Serial.println("starting up...");
  pinMode(Indicator_LED, OUTPUT);

  // Configure Relay outputs
  Open_Relays();
  
  // Configue Pin 10 for PWM output 1kHz.
  pinMode(Pilot_PWM_Pin, OUTPUT); 
  ICR1 = 1000;                                                                  // A 16MHz XO with a 1/8 prescaler and 1/1000 up/down count leads to a 1kHz PWM wave.
  TCCR1A = 0b00100010;
  TCCR1B = 0b00010010;                                                          // Timer 1 configured for PWM Phase correct with OC1B enabled non inverting and a 1/8 prescaler
  TIMSK1 = 0b00100001;                                                          // Enable Interrupts on TCNT1 = OCR1B. (on rising and falling edges of the PWM)    
  OCR1B = 0;                 

  // Configure ADC Module
  ADMUX = B01000000;                                                            // Set V_Ref to be AVcc, Set to A0
  ADCSRA = B10001111;                                                           // Enable ADC, Enable conversion complete interrupt, set 128 Prescaler -> ADC Clk = 125KHz 

  interrupts();   
  
  // Perform GFCI test
  if(GFCI_Test() != PASS) {
    Fault_Handler(STARTUP_GFCI_TEST_FAIL);
  }

//  OCR1B = 500;
//  while(1)  {
//    delay(100);
//    Serial.print(Pilot_Low_ADC); Serial.print(", "); Serial.print(Pilot_High_ADC); Serial.print(", "); Serial.println(GFCI_ADC);
//    
//  } 

  // Ready to start main loop
  Serial.println("Starting in State A");
}

//  ######################################################################################################
//  ------------------------------------------------------------------------------------------------------
//  ######################################################################################################
void loop() {
  static byte Current_State = STATE_A;  
  static byte PVC;  
  delay(10); 

  PVC = Read_Pilot_Voltage();                                                   // PVC = Pilot Voltage Classification
    
  // ---- Fault detection --------------------------------------------------------------------------------
  if(GFCI_ADC > GFCI_FAULT_THRESHOLD)
    Fault_Handler(GFCI_DETECT);

  if(PVC == _DIODE_FAULT)
    Fault_Handler(DIODE_FAULT);
  
  if(PVC == _FAULT) 
    Fault_Handler(VOLTAGE_CLASS_FAULT);

  // ---- Main State machine logic -----------------------------------------------------------------------  
  switch (Current_State)  {
    case STATE_A:
      if(PVC == _9_VOLTS or PVC == _6_VOLTS or PVC == _3_VOLTS)  {
        OCR1B = 500;
        digitalWrite(Indicator_LED, HIGH);
        Serial.println("State B");        
        Current_State = STATE_B;
      }    
      break;
      
    case STATE_B:       
      if(PVC == _12_VOLTS)  {
        OCR1B = 0;
        digitalWrite(Indicator_LED, LOW);
        Serial.println("State A");
        Current_State = STATE_A;
      }     
      else if(PVC == _6_VOLTS or PVC == _3_VOLTS)  {
        if(GFCI_Test() != PASS) {
          Fault_Handler(START_CHARGE_GFCI_TEST_FAIL);
        }
        else  {
          Serial.println("State C");
          Close_Relays();
          Current_State = STATE_C;
        }
      } 
      break;
      
    case STATE_C:
      if(PVC == _12_VOLTS or PVC == _9_VOLTS)  {
        Open_Relays();
        Serial.println("State B");        
        Current_State = STATE_B;
      }      
      break;    
  }
}

//  ######################################################################################################
//  ------------------------------------------------------------------------------------------------------
//  ######################################################################################################
byte Read_Pilot_Voltage()
{
  static int Fault_Count = 0;
  static int Previous_Value = _12_VOLTS;
  
  // Here we take the Pilot voltages and classfy them into states
  if((Pilot_Low_ADC > NEG_12V_MIN and Pilot_Low_ADC < NEG_12V_MAX) or OCR1B == 0) {
    if(Pilot_High_ADC > POS_12V_MIN and Pilot_High_ADC < POS_12V_MAX) {
      Previous_Value = _12_VOLTS; Fault_Count = 0;
      return(_12_VOLTS); 
    }
    else if(Pilot_High_ADC > POS_9V_MIN and Pilot_High_ADC < POS_9V_MAX) {
      Previous_Value = _9_VOLTS; Fault_Count = 0;
      return(_9_VOLTS);
    }
    else if(Pilot_High_ADC > POS_6V_MIN and Pilot_High_ADC < POS_6V_MAX) {
      Previous_Value = _6_VOLTS; Fault_Count = 0;
      return(_6_VOLTS);
    }
    else if(Pilot_High_ADC > POS_3V_MIN and Pilot_High_ADC < POS_3V_MAX) {
      Previous_Value = _3_VOLTS; Fault_Count = 0;
      return(_3_VOLTS);
    }
    else {
    // The measured voltage is out of any expected range. We call this a fault condition
      Fault_Count++;
      if(Fault_Count > FAULT_COUNT_THRESHOLD) 
        return(_FAULT);
      else  
        return(Previous_Value);
    }
  }
  else  {
    // Diode fault - the negative PWM should always be -12v, if it's not we have a diode missing fault!
    Fault_Count++;    
      if(Fault_Count > FAULT_COUNT_THRESHOLD)
        return(_DIODE_FAULT);
      else  
        return(Previous_Value);
  }  
}

byte GFCI_Test()
{
  pinMode(GFCI_Test_Pin, OUTPUT);
  delay(100);
  
  unsigned long GFCI_TimeDiff, GFCI_Timestamp = millis(); 
  
  while(1)  {
    digitalWrite(GFCI_Test_Pin, HIGH); delay(10);
    digitalWrite(GFCI_Test_Pin, LOW);  delay(10);
    GFCI_TimeDiff = millis() - GFCI_Timestamp;    

    if(GFCI_ADC > GFCI_FAULT_THRESHOLD or GFCI_TimeDiff > GFCI_FAULT_ABORT_THRESHOLD)
      break;
  }

  pinMode(GFCI_Test_Pin, INPUT);
  Serial.print("Ground fault detection time: "); Serial.print(GFCI_TimeDiff); Serial.println(" ms");
  delay(500);                                                                   // Allows time for the GFCI circuitary to decay to zero

  if(GFCI_TimeDiff < 100) {
    Serial.println("GFCI Test Successful");
    return(PASS);
  }
  else  {
    Serial.println("GFCI Test Unsuccessful");
    return(FAIL);
  }
}

void Fault_Handler(byte Fault_type)
{
  Open_Relays();
  OCR1B = 0;  

  Serial.print("FAULT: "); Serial.print(Fault_type);
  
  while(1) { 
    delay(100);
    digitalWrite(Indicator_LED, HIGH);
    delay(100); 
    digitalWrite(Indicator_LED, LOW);
  }
}

void Close_Relays()
{
  pinMode(Relay_1_Pin, OUTPUT); pinMode(Relay_2_Pin, OUTPUT);
  digitalWrite(Relay_1_Pin, HIGH); digitalWrite(Relay_2_Pin, HIGH);    
}

void Open_Relays()
{
  pinMode(Relay_1_Pin, OUTPUT); pinMode(Relay_2_Pin, OUTPUT);
  digitalWrite(Relay_1_Pin, LOW); digitalWrite(Relay_2_Pin, LOW);    
}

//  ######################################################################################################
//  ------------------------------------------------------------------------------------------------------
//  ######################################################################################################
// This code runs when the PWM signal is in the middle of its low period
ISR(TIMER1_OVF_vect)
{
  static byte selector = 0;
  if(ADCSRA & 0b01000000)
    return;
      
  if(selector && 1)  {
    ADMUX = B01000000;     
    ADCSRA |= B01000000;
    ADC_Channel = 0;    
  } 
  else  {     
    ADMUX = B01000001;
    ADCSRA |= B01000000;
    ADC_Channel = 1;     
  }

  selector++;
}

// This code runs when the PWM signal is in the middle of its high period
ISR(TIMER1_CAPT_vect)
{
  static byte selector = 0;
  if(ADCSRA & 0b01000000)
    return;
  
  if(selector && 1)  {
    ADMUX = B01000000;     
    ADCSRA |= B01000000;
    ADC_Channel = 0;    
  } 
  else  {     
    ADMUX = B01000001;
    ADCSRA |= B01000000;
    ADC_Channel = 2;     
  }

  selector++;
}

// Interrupt service routine for ADC conversion complete
ISR(ADC_vect) 
{    
  unsigned char adcl = ADCL;
  unsigned char adch = ADCH;

  switch(ADC_Channel)  {
    case 0:
      GFCI_ADC = (adch << 8) | adcl;
    break;
    
    case 1:
      Pilot_Low_ADC = (adch << 8) | adcl;
    break;
    
    case 2:
      Pilot_High_ADC = (adch << 8) | adcl;
    break;
  }
}
