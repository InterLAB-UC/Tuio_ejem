PImage sprite;
ArrayList<PImage> animation;
int w = 57;
int h = 88;

void setup(){
  size(500,500);
  smooth(8);
  sprite = loadImage("hydra.png");
  animation = new ArrayList<PImage>();
  for(int y = 0; y < sprite.height; y+=h){
    for(int x = 0; x < sprite.width; x+=w){
      PImage img = sprite.get(x,y,w,h);
      animation.add(img);
    }
  }
}

float indexs = 0;
float speed = 0.08;
void draw(){
  background(255);
  imageMode(CENTER);

 int index = floor(indexs)%animation.size();
  image(animation.get(index),width/2,height/2);
    indexs+=speed;
  
}

void keyPressed(){
  if(key == 's') saveFrame("####.jpg");
  
}
