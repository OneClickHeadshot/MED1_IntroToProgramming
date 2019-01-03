class Particle {
  float x;
  float y;
  float s;
  float speed;
  float grav;

  Particle(float _x, float _y, float _s) {
    x = _x;
    y = _y;
    s = _s;
  }
  
  //display the ellipses
  void display() {
    noStroke();
    fill(255, 100);
    ellipse(x, y, s, s);
  }
  
  //speard the ellipses in random directions
  void spread() {
    speed = random(-10, 10); 
    if (mousePressed) {
      int r = int(random(4));
      switch(r) {
      case 0: 
        x += speed;
        break;
      case 1: 
        x -= speed;
        break;
      case 2:
        y += speed;
        break;
      case 3:
        y -= speed;
        break;
      }
    }
  }

  //apply gravity and drop to the botton
  void drop() {
    y += grav;
    if (keyPressed) {
      grav = 10;
    }
    if (y > height) {
      grav = 0;
    }
  }
}
