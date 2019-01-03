Particle[] particles = new Particle[100];
int index = 0;
float s = 50;

void setup() {
  size(500, 500);
  //To avoid NullPointerException, fill the array with placeholder particles
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle(0, 0, 0);
  }
}

void draw() {
  background(50);
  particles[index] = new Particle(mouseX, mouseY, s);
  index++;
  if (index > particles.length-1) {
    index = 0;
  }
  for (int i = 0; i < particles.length-1; i++) {
   particles[i].display();
   particles[i].spread();
   particles[i].drop();
   }
}
