import TUIO.*;
TuioProcessing tuioClient;
float size = 100;
void setup(){
  size(1000,1000);
  tuioClient  = new TuioProcessing(this);
}

void draw(){
 
 
 
  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = tuioObjectList.get(i);
     pushMatrix();
     translate(tobj.getScreenX(width),tobj.getScreenY(height));
     rotate(tobj.getAngle());
     if(tobj.getSymbolID() == 1){
     firstNode(0,0,size);
     }
     popMatrix();
     fill(255);
     text("test", tobj.getScreenX(width), tobj.getScreenY(height));
   }
   
}


void firstNode(float x, float y, float s){
 
  ellipse(x,y,s,s);
  lines1(x,y+25);
}

void lines1(float x, float y){
  float ang = HALF_PI;
  float large = 70;
  float x1 = x + cos(ang) * large;
  float y1 = y + sin(ang) * large;
  line(x,y,x1,y1);
  secondNode(x1,y1,size*0.8);
}

void secondNode(float x, float y, float s){
  ellipse(x,y,s,s);
  lines2(x,y+25);
}

void lines2(float x, float y){
  float ang = HALF_PI;
  float large = 70;
  float x1 = x + cos(ang-ang/3) * large;
  float y1 = y + sin(ang-ang/3) * large;
  float x2 = x + cos(ang+ang/3) * large;
  float y2 = y + sin(ang+ang/3) * large;
  line(x,y,x1,y1);
  line(x,y,x2,y2);
  thirdNode(x1,y1,x2,y2, size * 0.7);
}

void thirdNode(float x1, float y1, float x2, float y2, float s){
  ellipse(x1,y1,s,s);
  ellipse(x2,y2,s,s);
  lines3(x2,y2+25);
}

void lines3(float x, float y){
  float ang = HALF_PI;
  float large = 70;
  float x1 = x + cos(ang-ang/3) * large;
  float y1 = y + sin(ang-ang/3) * large;
  float x2 = x + cos(ang+ang/3) * large;
  float y2 = y + sin(ang+ang/3) * large;
  line(x,y,x1,y1);
  line(x,y,x2,y2);
  forthNode(x1,y1,x2,y2, size * 0.5);
}

void forthNode(float x1, float y1, float x2, float y2, float s){
  ellipse(x1,y1,s,s);
  ellipse(x2,y2,s,s);
}
