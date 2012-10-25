import processing.serial.*;
import cc.arduino.*;

Serial myPort;
Arduino arduino;
int ledPin =9;
int ledPin2=10;
int ledPin3=8;
int ledPin4=7;
int ledPin5=11;
int ledPin6=12;
int ledPin7=6;
int ledPin8=5;


 int VERT = 0; // analog Y
 int HORIZ = 1; // analog X
 int SEL = 2; // digital

void setup()
{
 
println(Serial.list());
 // myPort = new Serial(this, Serial.list()[5], 9600);
  //println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(SEL, Arduino.INPUT);
  arduino.digitalWrite(SEL, Arduino.HIGH);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  arduino.pinMode(ledPin2, Arduino.OUTPUT);
  arduino.pinMode(ledPin3, Arduino.OUTPUT);
  arduino.pinMode(ledPin4, Arduino.OUTPUT);
  arduino.pinMode(ledPin5, Arduino.OUTPUT);
  arduino.pinMode(ledPin6, Arduino.OUTPUT);
  arduino.pinMode(ledPin7, Arduino.OUTPUT);
  arduino.pinMode(ledPin8, Arduino.OUTPUT);
}

void draw()
{
if (arduino.analogRead(VERT)>10){
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  arduino.digitalWrite(ledPin2, Arduino.HIGH);
}
  else{
  arduino.digitalWrite(ledPin, Arduino.LOW);
  arduino.digitalWrite(ledPin2, Arduino.LOW);
  }
  
  if (arduino.analogRead(VERT)<20){
  arduino.digitalWrite(ledPin3, Arduino.HIGH);
  arduino.digitalWrite(ledPin4, Arduino.HIGH);
}
  else{
  arduino.digitalWrite(ledPin3, Arduino.LOW);
  arduino.digitalWrite(ledPin4, Arduino.LOW);
  }
  
  if (arduino.analogRead(HORIZ)>80){
  arduino.digitalWrite(ledPin5, Arduino.HIGH);
  arduino.digitalWrite(ledPin6, Arduino.HIGH);
}
  else{
  arduino.digitalWrite(ledPin5, Arduino.LOW);
  arduino.digitalWrite(ledPin6, Arduino.LOW);
  }
  
  if (arduino.analogRead(HORIZ)<80){
  arduino.digitalWrite(ledPin7, Arduino.HIGH);
  arduino.digitalWrite(ledPin8, Arduino.HIGH);
}
  else{
  arduino.digitalWrite(ledPin7, Arduino.LOW);
  arduino.digitalWrite(ledPin8, Arduino.LOW);
  }
 
}


