class Blob{
 float r;
 float x,y;
 float step;
 int min,max;
 
  Blob(){
   max = height/2-100;
   min = max-100;
   step = TWO_PI/64.0;
  }
  
  void display(AudioInput input){
    noStroke();
    fill(#46346C);
    beginShape();
    for(float i=0; i<TWO_PI; i+=step){
      int index = int(map(i,0,TWO_PI,0,1024));
      r = map(input.mix.get(index), -1, 1, min,max);
      x = r * cos(i);
      y = r * sin(i);
      x+=width/2;
      y+=height/2;
      curveVertex(x,y);
    }
    endShape();
  }
  
}
