void test1() { // this test will bring pressure up to 46 pounds and hold
int TIMETOHITPRESSURE = 10; //set time to 10 seconds to increase pressure
int MAXFORCE = 46; // set max force
int HOLDTIME = 10; // set time for hold of force to 10 seconds
TIMETOHITPRESSURE = TIMETOHITPRESSURE*1000; //convert times to milliseconds
HOLDTIME = HOLDTIME*1000;
float MAXVOLTAGE = MAXFORCE/(10*surfacearea); //converts force to voltage (100psi reg 10v control)
long timer = millis(); //get time of start sequence
while(millis() - timer < TIMETOHITPRESSURE){
  int currentPWM = round((((MAXVOLTAGE/TIMETOHITPRESSURE)*(millis()-timer))/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
while(millis() - timer < TIMETOHITPRESSURE+HOLDTIME){
  int currentPWM = round((MAXVOLTAGE/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
  arduino.analogWrite(controlPin, 0); // set regulator to 0;
  r.activate(0); // turn off all current sequences;

  
}
void test2() { // this test will bring pressure up to 56 pounds and hold
int TIMETOHITPRESSURE = 10; //set time to 10 seconds to increase pressure
int MAXFORCE = 56; // set max force
int HOLDTIME = 10; // set time for hold of force to 10 seconds
TIMETOHITPRESSURE = TIMETOHITPRESSURE*1000; //convert times to milliseconds
HOLDTIME = HOLDTIME*1000;
float MAXVOLTAGE = MAXFORCE/(10*surfacearea); //converts force to voltage (100psi reg 10v control)
long timer = millis(); //get time of start sequence
while(millis() - timer < TIMETOHITPRESSURE){
  int currentPWM = round((((MAXVOLTAGE/TIMETOHITPRESSURE)*(millis()-timer))/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
while(millis() - timer < TIMETOHITPRESSURE+HOLDTIME){
  int currentPWM = round((MAXVOLTAGE/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
  arduino.analogWrite(controlPin, 0); // set regulator to 0;
  r.activate(0); // turn off all current sequences;

  
}
void test3() { // this test will bring pressure up to 46 pounds quickly and hold for two seconds.
int TIMETOHITPRESSURE = 1; //set time to 10 seconds to increase pressure
int MAXFORCE = 46; // set max force
int HOLDTIME = 2; // set time for hold of force to 10 seconds
TIMETOHITPRESSURE = TIMETOHITPRESSURE*1000; //convert times to milliseconds
HOLDTIME = HOLDTIME*1000;
float MAXVOLTAGE = MAXFORCE/(10*surfacearea); //converts force to voltage (100psi reg 10v control)
long timer = millis(); //get time of start sequence
while(millis() - timer < TIMETOHITPRESSURE){
  int currentPWM = round((((MAXVOLTAGE/TIMETOHITPRESSURE)*(millis()-timer))/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
while(millis() - timer < TIMETOHITPRESSURE+HOLDTIME){
  int currentPWM = round((MAXVOLTAGE/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
  arduino.analogWrite(controlPin, 0); // set regulator to 0;
  r.activate(0); // turn off all current sequences;

  
}
void test4() { // this test will bring pressure up to 56 pounds quickly and hold for two seconds
int TIMETOHITPRESSURE = 1; //set time to 10 seconds to increase pressure
int MAXFORCE = 46; // set max force
int HOLDTIME = 2; // set time for hold of force to 10 seconds
TIMETOHITPRESSURE = TIMETOHITPRESSURE*1000; //convert times to milliseconds
HOLDTIME = HOLDTIME*1000;
float MAXVOLTAGE = MAXFORCE/(10*surfacearea); //converts force to voltage (100psi reg 10v control)
long timer = millis(); //get time of start sequence
while(millis() - timer < TIMETOHITPRESSURE){
  int currentPWM = round((((MAXVOLTAGE/TIMETOHITPRESSURE)*(millis()-timer))/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
while(millis() - timer < TIMETOHITPRESSURE+HOLDTIME){
  int currentPWM = round((MAXVOLTAGE/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
  arduino.analogWrite(controlPin, 0); // set regulator to 0;
  r.activate(0); // turn off all current sequences;

  
}
void test5() { // this test will bring pressure up to 66 pounds and hold
int TIMETOHITPRESSURE = 10; //set time to 10 seconds to increase pressure
int MAXFORCE = 66; // set max force
int HOLDTIME = 10; // set time for hold of force to 10 seconds
TIMETOHITPRESSURE = TIMETOHITPRESSURE*1000; //convert times to milliseconds
HOLDTIME = HOLDTIME*1000;
float MAXVOLTAGE = MAXFORCE/(10*surfacearea); //converts force to voltage (100psi reg 10v control)
long timer = millis(); //get time of start sequence
while(millis() - timer < TIMETOHITPRESSURE){
  int currentPWM = round((((MAXVOLTAGE/TIMETOHITPRESSURE)*(millis()-timer))/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
while(millis() - timer < TIMETOHITPRESSURE+HOLDTIME){
  int currentPWM = round((MAXVOLTAGE/5)*255); // get current voltage and convert to pwm value
  arduino.analogWrite(controlPin, currentPWM); // write to the arduino pwm pin
  float voltageinputs = (arduino.analogRead(readPin)/1024)*5; //get the output from the regulator
  float pressurecurrents = voltageinputs*20; // convert to a pressure
  float forcecurrents = pressurecurrents * surfacearea; //provide a force
  text("Current force:",10,250); //display force on screen
  text(forcecurrents + " lbs" , 10, 265);
}
  arduino.analogWrite(controlPin, 0); // set regulator to 0;
  r.activate(0); // turn off all current sequences;

  
}