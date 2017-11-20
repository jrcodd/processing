PFont myFont;


void setup() {
  size(800, 800);
    fill(0, 255, 0); ellipse(400, 400, 300, 300);  String[] fontList = PFont.list();
 printArray(fontList);
  myFont = createFont( "PTSerif-Bold", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  fill(255, 0, 0); text("Jackson", width/2, height/2);

}