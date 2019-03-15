//Animacion sprite

//Declaracion de objeto
Animation a1 ;

void setup() {
  //Tamaño del sketch
  size(300, 300);
  //Frames por segundo
  frameRate(15);
  //Inicializacion de objeto - animacion(cantidad de sprites, coordenada x, coordenada y);
  a1 = new Animation(14, width/2,height/2);
  //color del fondo
  background(153, 153, 0);
}

void draw() { 
  
  /*
  En este caso la animacion se detiene si se presiona el mouse, mientras no sea
  presionado se seguira con la transicion entre frames 
  */
  
 //Si el mouse es presionado
 if(mousePressed){
   //color del fondo
   background(255,20,200);
   //Llamada de metodo para que se ejecute
   a1.sto();
 }else{
   //color de fondo
   background(153, 153, 0);
   //Llamada de metodo
   a1.display();
 }
  
}

//Clase para llamar los sprites y se haga la secuencia 
class Animation {
  //Arreglo de imagenes donde seran alojados los sprites
  PImage[] images;
  //Cantidad de sprites
  int imageCount;
  //Aumento
  int frame;
  //Localizacion
  float x, y;
  
  Animation(int count, float x, float y) {
    imageCount = count;
    images = new PImage[imageCount];
    this.x = x;
    this.y = y;
    //Un loop para inicializar el arreglo de imagenes y enlazar los archivos
    for (int i = 0; i < imageCount; i++) {
      int ind = i + 1;
      images[i] = loadImage(str(ind)+".png");
    }
  }
  
  //Con este metodo se mostrara la secuencia
  void display() {
    imageMode(CENTER);
    //Aumento para iniciar y poner un limite
    //frame = (0 + 1) % 14;
    //frame = (1 + 1) % 14;
    //frame = (2 + 1) % 14;
    frame = (frame+1) % imageCount;
    image(images[frame], x, y, 200, 200);
  }
  
  //Con este se detiene la secuencia mientras se presione el mouse 
  void sto() {
    imageMode(CENTER);
    image(images[frame], x, y, 200, 200);
  }
  
}
