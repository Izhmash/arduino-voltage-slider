import processing.serial.*;
import cc.arduino.*;
import controlP5.*;

Arduino arduino;
ControlP5 cp5;

int v;

void setup() {
  size(470, 200);
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("Voltage", 0, 255, 0, 100, 50, 200, 100); 
  
  println(Arduino.list());
  
  arduino = new Arduino(this, "/dev/ttyUSB0", 57600);

}

void draw() {
  background(color(4, 79, 111));
  stroke(color(84, 145, 158));
  arduino.pinMode(3, Arduino.OUTPUT);
  //fill(0);
  //text("test", 100, 95);
  arduino.analogWrite(3, v);
}

// an event from slider sliderA will change the value of textfield textA here
public void Voltage(int val) {
   //arduino.analogWrite(3, val);
   fill(0);
   //text(val, 100, 95);
   v = val;
}