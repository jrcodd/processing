color c;
PImage zombie;
 
void setup() {
   size(300, 400);
  zombie = loadImage("images.jpg");
  zombie.resize(300, 400);
 noStroke();
}
void draw() {
   image(zombie, 0, 0);
  c = color(random(255), random(255), random(255));
  fill(c);
  if(mouseX<= 45) {
    mouseX = 45;
  }
  
  if(mouseX >= 95) {
    mouseX = 95;
  }
  if(mouseY >= 171) {
  mouseY = 171;
  }
  
  if(mouseY <= 129) {
    mouseY = 129;
  }
  ellipse(mouseX, mouseY, 20, 30);
  ellipse(mouseX + 70, mouseY, 20, 30);
println(mouseY);
}