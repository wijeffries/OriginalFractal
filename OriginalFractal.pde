public void setup()
{
  size(500,500);
  background(0);
  myFractal(250, 250, 550);
}
public void draw()
{
  
}
public void myFractal(double x, double y, double siz) 
{
  ellipse((int)x, (int)y, (int)siz, (int)siz);
  if (siz > 10) {
    myFractal(x + (Math.cos(getAngle())), y+(Math.sin(getAngle())), siz-(100/distance()));
  }
}
public double getAngle() 
{
  double angle = 90;
  double centerX = 250;
  double centerY = 250;
  if (mouseX != 250) {
    angle = ((Math.atan2((mouseY-centerY), (mouseX-centerX))));
  }
  return angle;
}
public int distance()
{
  int dst = (int)(dist(250, 250, mouseX, mouseY)/7);
  if (dst < 5) {
    return 5;
  }
  return dst;
}
public void mousePressed()
{
   myFractal(250, 250, 550);
}
