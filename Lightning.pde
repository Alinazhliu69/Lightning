//You find a vicious ant on your kitchen counter. Press space to launch PB&J breadcrumbs at it
int startX = 0;
int startY = 150;
int endX = 150;
int endY = 150;  
int hbarX = 40;
int barY = 100;
PImage img;
void setup()
{
  size(400,300);
  filter(BLUR, 6);
  smooth();
  strokeWeight(5);
  background(0,0,139);
  frameRate(50);
  img = loadImage("Deadant.png");
}
void draw(){
//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
stroke((int)(Math.random()*255), 30, 70);
fill(0);
ellipse(190, 40, 100, 100);
ellipse(160, 45, 100, 100);
ellipse(135, 90, 100, 100);
ellipse(140, 145, 100, 100); //real one  
ellipse(150, 200, 100, 100);
fill(255, 255, 255);
ellipse(120, 220, 10, 10);
ellipse(160, 220, 10, 10);
line(100, 220, 60, 200);
line(60, 200, 30, 240);
line(195, 220, 220, 200);
line(220, 200, 260, 240);
//while(endX < 300) { // instantaneous
  endX = startX + (int)(Math.random()*7);
endY = startY + ((int)(Math.random()*17) - 9);
  line(startX, startY, endX, endY);
startX = endX;
startY = endY;
//}
fill(0, 255, 0);
rect(310, 40, 40, barY);
textSize(35);
text("Health Bar", 230, 180); 
if (barY > 140){
  textSize(25);
  text("what the...", 10, 280); }
  if (barY > 200){
  textSize(25);
  text("Why is the health...", 120, 280); }
if (barY > 300) {
  fill(255, 0, 0);
  rect(0, 0, 400, 300);
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Attempt futile, commence flamethrower.", width/2, 60);
  textSize(50);
  text("PRESS F", width/2, 120);
}
  if((key== 'f') || (key == 'F')){
  image(img, 0, 0, 400, 300);
  fill(0, 255, 0);
  textSize(100);
  strokeWeight(3);
  textAlign(CENTER);
  text("VICTORY", 200, 150);
  }
} 
void keyPressed(){
  if(key == ' '){
   startX = 0;
 startY = 150;
 endX = 150;
 endY = 150;
  barY = barY + 30;
}

}




