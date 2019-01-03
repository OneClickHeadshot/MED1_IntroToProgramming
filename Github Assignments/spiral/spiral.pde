float r = 0;
float angle = 0;
float angleIncrement = 0.03;
float x,y,s;
float noiseScale = 0.02;
float noise;

void setup() {
  size(1000, 1000);
  background(255);
}

void draw() {
  // Polar to Cartesian conversion
  x = r * cos(angle);
  y = r * sin(angle);
  noise = noise(r);
  s = noise*20;
  // Draw an ellipse at x,y
  noStroke();
  println(s);
  fill(0,0,s*20);
  // Adjust for center of window
  ellipse(x+width/2, y+height/2, s, s); 
  // Increment the angle
  angle += angleIncrement;
  // Increment the radius
  r += 0.1;
}
