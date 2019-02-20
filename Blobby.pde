import ddf.minim.*;
Blob blob;
Minim minim;
AudioInput in;

void setup(){
 fullScreen(P3D);
 minim = new Minim(this);
 in = minim.getLineIn();
 blob = new Blob();
}

void draw(){
  background(0);
  blob.display(in);  
}
