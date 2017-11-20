PImage mustache;
PImage trump;
PImage hat;

void setup() {
  trump = loadImage("trump.jpg");
  mustache = loadImage("stache.png");
  hat = loadImage("hat.png");
   size(800, 600);
   trump.resize(width,height);
   background(trump);
}
void draw() {
if(mousePressed) {
   image(mustache, mouseX, mouseY);
  
}
   mustache.resize(100, 20);
   hat.resize(200, 50);
   
   if(mouseButton == RIGHT) {
    image(hat, mouseX, mouseY); 
   }
}