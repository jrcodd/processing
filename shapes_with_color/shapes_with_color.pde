
float x = 300;
float y = 100;
float z = 90;

void setup() {
  size(800, 800, P3D);
  background(0, 0, 26);
}
void draw() {
fill(0, 255, 25); ellipse(100, 100, 90, 90);
fill(0, 255, 0); ellipse(100, 200, 90, 90);
fill(0, 56, 255); rect(200, 100, 90, 90);
fill(0, 255, 0); rect(200, 200, 90, 90);
fill(100, 0, 100); triangle(300, 100, 400, 100, 350, 200);

}