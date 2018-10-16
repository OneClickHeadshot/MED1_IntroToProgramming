Flower[] Flowers = new Flower[3];

void setup() {
  size(1200, 900);

  float _r1= random(40,80);
  int _petals= int(random(7,10));
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  Flowers[0] = new Flower(_r1, _petals, _x, _y, _pc);
  Flowers[1] = new Flower(_r1, _petals, _x-200, _y, _pc);
  Flowers[2] = new Flower(_r1, _petals, _x+200, _y, _pc);
}

void draw() {
  background(#43AF76);
  Flowers[0].display();
  Flowers[0].move();
  Flowers[0].bounce();
  Flowers[1].display();
  Flowers[1].move();
  Flowers[1].bounce();
  Flowers[2].display();
  Flowers[2].move();
  Flowers[2].bounce();
}
