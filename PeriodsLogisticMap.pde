import org.apache.commons.math3.util.*;

float x=50, r=360, Reps=150;
void setup(){
  size(1600,800);
  stroke(255);
  background(0);
  //translate(0, height);
  //Successione();
}

void draw(){
}

void keyPressed(){
  if(key=='q' && r<400){r+=1; Successione();}
  if(key=='w' && r>0){r-=1; Successione();}
  
  if(key=='a' && x<100){x+=1; Successione();}
  if(key=='s' && x>0){x-=1; Successione();}
  
  if(key==' ')Biforcazione();
}














/*
void TracciaAssi(){
  double x,y=0.5;
  for(int a=0; a<width; a++){
    x = (double)a/width * 4;
                //x(n+1) = r*xn*(1-xn) dove r è x, e x + y
                //double j = x*y*(1-y); 
                //while(y!=j){
                //for(int i=0; i<1000; i++){
                //y = x*y*(1-y); 
                //}
    //y=function;
    double b=y*height/4;
    line((float)a,(float)-b,(float)a,(float)-b);
  }
}
*/
