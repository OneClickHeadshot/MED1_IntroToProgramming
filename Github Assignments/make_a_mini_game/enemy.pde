class Enemy {
  float x;
  float y;
  float s;
  float speed;
  float base;

  Enemy() {
    s = 60;
    x = random(width-s);
    speed = 2;
    base = 500;
  }

  void show() {
    rect(x, y, s, s);
  }

  void update() {
    y += speed;
    if (y > base-s) {
      textSize(42);
      fill(#00FF0A);
      text("GAME OVER", width*0.33, height*0.3);
      noLoop();
    }
  }
}
