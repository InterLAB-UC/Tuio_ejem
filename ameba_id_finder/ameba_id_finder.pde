//Ameba ID finder

//Declarar libreria
import TUIO.*;
//Declarar objeto enlazado a la libreria
TuioProcessing tuioClient;

void setup(){
  //Tamaño del sketch
  size(500,500);
  //Inicializacion del objeto 
  tuioClient  = new TuioProcessing(this);
  //Color del fondo
  background(0);
}

void draw(){
  
  /*
  Para que TUIO junto con reacTIVision detecten las amebas por su ID, primero hay que
  declarar una lista de arreglos donde vienen todas las amebas ya identificadas
  */
  
  //Lista de arreglo relacionada con la lista de amebas
  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
  //Loop para leer la informacion dentro del arreglo
  for (int i=0;i<tuioObjectList.size();i++) {
    //Se utilizara un segundo objeto donde la informacion del arreglo sera cargada
     TuioObject tobj = tuioObjectList.get(i);
     pushMatrix();
     translate(tobj.getScreenX(width),tobj.getScreenY(height));
     
     /*
     tobj.getSymbolID nos permite identificar la ameba por ID, es decir que si mostramos
     la ameba con ID 0, 1 o n, cuando escribamos una condicion donde suceda cierta cosa si aparece
     se ejecutara, mientras no
     */
     
     //Si ameba ID es igual a 0
      if(tobj.getSymbolID() == 0){
       fill(0);
       stroke(255);
       rect(0,0,20,20);
       fill(255);
       text("ameba 0",0,0+35);
     }
     //Si ameba ID es igual a 1
      if(tobj.getSymbolID() == 1){
       fill(0);
       stroke(255);
       ellipse(0,0,20,20);
       fill(255);
       text("ameba 1",0,0+35);
     }
     popMatrix();
  }
}
