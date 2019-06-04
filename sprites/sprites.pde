/*
libreria de Peter Lager: http://www.lagers.org.uk/s4p/
ref: http://www.lagers.org.uk/s4p/ref/index.html
*/

//importar libreria de sprites 

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

//Declarar las clases de las animaciones

Sprite blob;
Sprite power;

//Declarar el tiempo
StopWatch sw = new StopWatch();
void setup(){
  size(500,500);
  //inicializar las animaciones, imagen (siempre tienen que ser .png), cuantas hay en el eje x, cuantas hay en el eje y, valor agregado
  blob = new Sprite(this,"mage1.png",4,2,50);
  power = new Sprite(this,"power.png",4,2,50);
  //fondo
   background(255);
}

void draw(){
//inicializar el tiempo para poder ligarlo a la animacion
  float elapsedTime = (float)sw.getElapsedTime();
//Actualizar la animacion de acuerdo a el tiempo
  S4P.updateSprites(elapsedTime);
  background(255);
//Dibujar sprites
  S4P.drawSprites();
//En que posicion los sprites se mostraran
  blob.setXY(mouseX,mouseY);
//Establecer la secuencia, si la animacion tiene 12 sprites, es de 0 a 11, el tiempo 0.3 o 0.1, el tiempo que se repetira
  blob.setFrameSequence(0,7,0.32,1);
  power.setXY(mouseX,mouseY);
power.setFrameSequence(0,7,0.42,1);
}


void mousePressed(){
//Status de las animaciones, setDead si es verdadero no muestra la animacion
blob.setDead(true);
power.setDead(false);

}

void mouseReleased(){
    power.setDead(true);
  blob.setDead(false);
}
