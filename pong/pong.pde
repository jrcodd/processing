import ddf.minim.*;       
  Minim minim;        
  AudioSample sound;      
  
 PFont f; 
  int score = 0;
int rectY = mouseY;
int ballY = 29;
int ballX = 200;
int ballSpeedY = 3;
int ballSpeedX = 3;
void setup() {
size(800, 500);  
  minim = new Minim (this);
  sound = minim.loadSample("pong.wav", 128);
  f = createFont("Arial",16,true);
} 
 void draw() {
   background(255);
  ellipse(ballX, ballY, 10, 10); 
  rect(mouseX, 400, 60, 10);
  fill(0) ;  
  stroke(0) ;  
  
  textFont(f,16);                  
                            
  text(score, 400, 100);   
 

  ballY = ballY + ballSpeedY;
  ballX = ballX + ballSpeedX;
  if(height < ballY) {
     sound.trigger();
    
 ballSpeedY = -ballSpeedY;
 
  }
  
  else if(0 > ballY) {
    ballSpeedY = -ballSpeedY;
    
  }
  else if(width < ballX) {
    sound.trigger();
    ballSpeedX = - ballSpeedX;
  }
  
  else if(0 > ballX) {
    ballSpeedX = -ballSpeedX;
    
  }
 if(intersects(ballX, ballY, mouseX, 400, 60)) {
   sound.trigger();
   ballSpeedY = -ballSpeedY;
   score = score + 1;
   System.out.println(score);
 }
 }
 
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}