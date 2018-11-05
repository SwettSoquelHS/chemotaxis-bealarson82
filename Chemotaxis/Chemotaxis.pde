float a;
float b;
float easing = 0.05;

Bacteria b1;
Bacteria[] bact;

 void setup(){     
   size(600, 600);
   background(random(255), random(255), random(255));
   bact = new Bacteria[50];
   
   for(int i = 0; i < bact.length; i++){
     int x = (int)(width*Math.random());
     int y = (int)(height*Math.random());
     int r = (int)(5 * Math.random()) + 2;
     bact[i] = new Bacteria(x,y,r);
   }
   
   b1 = new Bacteria(width/2, height/2, 10);
 	//initialize bacteria variables here   
 }   
 void draw() {
   for(int i = 0; i < bact.length; i++){
     bact[i].show();
   
   float targetX = mouseX;
   float da = targetX - a;
   a += da * easing;
   
   float targetY = mouseY;
   float db = targetY - b;
   b += db * easing;
   ellipse(a, b, random(40), random(40));
   }    
 	//move and show the bacteria   
 }  
 class Bacteria {
  float x_pos;
  float y_pos;
  float radius;
  
  public Bacteria(float x,float y, float rad){
    x_pos = x;
    y_pos = y;
    radius = rad;
  }
  
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    fill (random(#CB2F2F), random(#B414B2), random(#FA9F49)); 
    ellipse(0,0,radius, radius);
    
    popMatrix();
  }
    
    
    
    
    
    
    
    
    
 }    
