Defender def;
Missile missiles[];
Enemy enemy;
int missilesLength = 100;
boolean mouse = true;
int counter = 0;
int n = 0;

void setup() {
  size(800, 600);
  def = new Defender();
  enemy = new Enemy();
  missiles = new Missile[missilesLength];
  for (int i = 0; i < missilesLength-1; i++) {
    missiles[i] = new Missile();
  }
}

void draw() {
  noCursor();
  background(0);
  fill(#00FF0A);
  stroke(#00FF0A);
  line (10, 500, width-10, 500); //home
  textSize(20);
  text("Points: "+counter, 10, 25);
  int bulletsLeft = missilesLength-n;
  text("Bullets left: " + bulletsLeft, 10,55);
  def.show();
  enemy.show();
  enemy.update();
  missiles[n].show();
  if (mousePressed) {
    mouse = false;
  }
  if (mouse == false) {
    missiles[n].update();
  }
  if (missiles[n].y < 0) {
    n++;
  }
  if (dist(enemy.x+enemy.s/2, enemy.y+enemy.s/2, missiles[n].x, missiles[n].y) < enemy.s/2+missiles[n].s/2) {
    missiles[n].y = def.y;
    mouse = true;
    enemy.y = 0;
    enemy.x = random(width - enemy.s);
    counter++;
    enemy.speed *= 1.05;
    n++;
  }
  if (n == missilesLength) {
    textSize(42);
    fill(#00FF0A);
    text("GAME OVER", width*0.33, height*0.3);
    noLoop();
  }
  println(n);
}
