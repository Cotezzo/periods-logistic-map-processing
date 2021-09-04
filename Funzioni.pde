void Successione(){
  translate(0,height);
  background(0);
  fill(255); text("x: " + x/100 + "\nr: " + r/100, 7,-height+15); strokeWeight(2); line(width/2,0,width/2,-height);
  float xvec, yvec;
  float xu = x/100, xc=-(width/2)/Reps, yc=x;
  for(int i=0; i<Reps+1; i++){
    xvec=xc;
    yvec=yc;
    xc += (width/2)/Reps;
    yc = map(xu,0,1,0,height);
    strokeWeight(5); point(xc, -yc);
    strokeWeight(1); line(xvec,-yvec,xc,-yc);
    xu=(r/100)*xu*(1-xu);
  }
}

void Biforcazione(){
  background(0);
  double xu = x / 100d, yc, xc = 0;
  for(int rp = 6000; rp < 8000; rp++){
    //xu = x / 100;//400
    for(int i = 0; i < 1000; i++){
      xu = (rp / 2000d) * xu * (1 - xu); 
      yc = xu * height;
      strokeWeight(1); point((float)xc, (float)(height - yc));
    }
    xc += width/2000d; // (w/2) /400
  }
}

/*
void testo(String s1, int w, int h){ //Stampa testo con bordino nero
  textSize(14); fill(0); 
  text(s1, w, h+1);
  text(s1, w+1, h);
  text(s1, w-1, h);
  text(s1, w, h-1);
  fill(255);
  text(s1, w, h);
}
*/
