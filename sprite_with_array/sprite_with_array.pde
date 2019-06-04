//Sprite sheet con todos los assets en cuadricula
PImage sprite;
//Arreglo donde se guardaran las imagenes una por una
ArrayList<PImage> animation;
//Tamaño del asset individual
int w = 57;
int h = 88;

void setup(){
  size(500,500);
  smooth(8);
  //cargar sheet de assets
  sprite = loadImage("hydra.png");
  //inicializar arreglo
  animation = new ArrayList<PImage>();
  //loop para buscar en los pixeles de la planilla los assets
  for(int y = 0; y < sprite.height; y+=h){
    for(int x = 0; x < sprite.width; x+=w){
    //Se dividen en imagenes
     PImage img = sprite.get(x,y,w,h);
     //se guardan en el arreglo
      animation.add(img);
    }
  }
}

float indexs = 0;
float speed = 0.08;
void draw(){
  background(255);
  imageMode(CENTER);
/*
ndex contiene floor, floor lo que hace es quitar el punto decimal del numero que esta siendo aumentado
indexs = 2.3 // index = 2 
indexs = 2.9 // index = 2
indexs = 3.04 // index = 3
se le asigna un modulo para que no pase de los valores asignados en el arreglo y marque error
*/

 int index = floor(indexs)%animation.size();
 image(animation.get(index),width/2,height/2);
    indexs+=speed;
  
}

void keyPressed(){
  if(key == 's') saveFrame("####.jpg");
  
}
