import sprites.*;
import sprites.maths.*;
import sprites.utils.*;


Sprite blob;
Sprite power;
float px, py;
StopWatch sw = new StopWatch();
void setup(){
  size(500,500);
  blob = new Sprite(this,"mage1.png",4,2,50);
  power = new Sprite(this,"power.png",4,2,50);
  
   background(255);
}

void draw(){
  float elapsedTime = (float)sw.getElapsedTime();
  S4P.updateSprites(elapsedTime);
  background(255);
  S4P.drawSprites();

  blob.setXY(mouseX,mouseY);
  blob.setFrameSequence(0,7,0.32,1);
  power.setXY(mouseX,mouseY);
power.setFrameSequence(0,7,0.42,1);
}


void mousePressed(){
blob.setDead(true);
power.setDead(false);

}

void mouseReleased(){
    power.setDead(true);
  blob.setDead(false);
}
