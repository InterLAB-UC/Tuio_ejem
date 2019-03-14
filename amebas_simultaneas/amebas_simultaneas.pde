//Amebas simulteaneas

//Declaracion de arreglo de imagenes
PImage[] img;
//Cantidad de imagenes en el arreglo
int cant = 4;

import TUIO.*;
TuioProcessing tuioClient;


void setup(){
  size(1280,720);  
  
  tuioClient  = new TuioProcessing(this);

  //Inicializacion de arreglo de imagenes y la cantidad 
  img = new PImage[cant];
  
  //Asociacion de archivo con el arreglo de imagenes
  for(int i = 0; i < cant; i++){
    int ind = i + 1;
    img[i] = loadImage(ind+".png");
  }
  
}

void draw(){
  
  background(0);
  imageMode(CENTER);
  
  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = tuioObjectList.get(i);
     pushMatrix();
     translate(tobj.getScreenX(width),tobj.getScreenY(height));
      if(tobj.getSymbolID() == 0){
       image(img[0],0,0);
       text("ameba 0",0,0+img[0].height);
     }
      if(tobj.getSymbolID() == 1){
       image(img[1],0,0);
       text("ameba 1",0,0+img[1].height);   
     }
       if(tobj.getSymbolID() == 2){
       image(img[2],0,0);
       text("ameba 2",0,0+img[2].height);   
     }
       if(tobj.getSymbolID() == 3){
       image(img[3],0,0);
       text("ameba 3",0,0+img[3].height);   
     }
       if(tobj.getSymbolID() == 4){
       rect(0,0,40,40);
       text("ameba 4",0,0+60);   
     }
     popMatrix();
  }
}
