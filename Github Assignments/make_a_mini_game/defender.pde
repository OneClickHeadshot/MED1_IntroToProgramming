class Defender {
  float x;
  float y;

  Defender() {
    y = 450;
  }

  void show() {
   x = mouseX; 
    triangle(x, y, x-50, y+50, x+50, y+50);
  }
  
  void update(){
  }
}
