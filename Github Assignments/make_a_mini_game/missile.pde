class Missile {
  float x;
  float y;
  float s;
  float speed;

  Missile() {
    y = 450;
    s = 15;
    speed = 10;
  }

  void show() {
    x = mouseX;
    ellipse(x, y, s, s);
  }

  void update() {
    y -= speed;
    if (y < 1) {
      y = 450;
      mouse = true;
    }
  }
}
