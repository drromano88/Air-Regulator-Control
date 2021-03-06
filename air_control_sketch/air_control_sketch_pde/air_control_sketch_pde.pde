
import controlP5.*;
import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

Arduino arduino;
ControlP5 cp5;
int MAXFORCE = 100;
int force = 0; 
int readPin = A2; //Number for the analog read pin
int controlPin = 4; // number for the PWM Pin
int knobValue = 100;
PFont f;
float surfacearea = 3;
float vreq = 0;
int pinoutval = 0;
Knob myKnobA;
Knob myKnobB;

void setup() {
  size(700,400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //may need to change the 0 depending on the sketch
  arduino.pinMode(readPin, Arduino.INPUT); //sets pin as an input pin
  arduino.pinMode(controlPin, Arduino.OUTPUT); // sets pin as an output pin
  smooth();
  noStroke();
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  cp5 = new ControlP5(this);
  
  myKnobA = cp5.addKnob("Manual Force")
               .setRange(0,MAXFORCE)
               .setValue(0.0)
               .setPosition(10,70)
               .setRadius(70)
               .setDragDirection(Knob.VERTICAL)
               ;
                     
}

void draw() {
  float voltageinput = (arduino.analogRead(readPin)/1024)*5;
  float pressurecurrent = voltageinput*20;
  float forcecurrent = pressurecurrent * surfacearea;
  fill(knobValue);
  rect(5,40,150,320);
  fill(0);
  textFont(f,16);                  // STEP 3 Specify font to be used
  fill(255);                         // STEP 4 Specify font color 
  text("Current force:",10,250);
  text(forcecurrent + " lbs" , 10, 265);
  arduino.analogWrite(controlPin,pinoutval);
  // STEP 5 Display Text
  //myKnobB.setValue(myKnobA.getValue());
}


void knob(int theValue) {
  force = theValue;
  vreq = (force/surfacearea/100)*10;
  pinoutval = round(map(vreq, 0,5,0,255)); //convert voltage to pwm
  println("a knob event. setting background to "+theValue);
}


void keyPressed() {
  switch(key) {
    //case('1'):myKnobA.setValue(180);break;
   // case('2'):myKnobB.setConstrained(false).hideTickMarks().snapToTickMarks(false);break;
   // case('3'):myKnobA.shuffle();myKnobB.shuffle();break;
  }
  
}