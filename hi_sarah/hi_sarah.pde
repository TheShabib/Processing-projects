float t = 0;
int numStars = 40;
Star[] cluster;

void setup()
{
  size(500,500);
  background(0);
  stroke(255);
  strokeWeight(2.5);
  
  //initialize star cluster
  cluster = new Star[numStars];
  for (int i = 0; i < numStars; i++)
  {
    cluster[i] = new Star();
  }
}

void draw()
{
  background(0);
  translate(250,250);

  for (Star star : cluster)
  {
    star.draw();
  }

  t+=.003;
}

class Star
{
  float radius = random(1, 250);
  float phase = random(0,2*PI);
  float frequency = random(2,6);
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  float offset1 = random(0, 100);
  float offset2 = random(0, 100);
  float textsize = random(5,55);
  void draw()
  {
    pushMatrix();
    rotate(t*frequency + phase);
    // point(radius, phase);
    textSize(textsize);
    text("hi sarah", offset1, offset2); 
    fill(r, g, b);
    popMatrix();
  }
}