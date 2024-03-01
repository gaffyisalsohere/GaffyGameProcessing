class Doller
{
  float xPos, yPos, spinValue;
  int d;
  boolean collected, extreme;
  Doller(float x, float y)
  {
    xPos = x;    //Horizontal Position
    yPos = y;    //Vertical Position
    d = 3;
    spinValue = 1;
    extreme = true;
  }
  void Render()
  {
    if (collected == false)
    {
      //ellipseMode(CORNER);
      fill(150);
      ellipse(xPos*d, yPos*d, spinValue*16*d, 16*d);
      fill(90);
      ellipse((xPos)*d, (yPos)*d, spinValue*14*d, 14*d);
      fill(150);
      ellipse((xPos)*d, (yPos)*d, spinValue*12*d, 12*d);
      //ellipseMode(CENTER);
      if (spinValue >=0.25 && extreme == true)
      {
        spinValue -= 0.05;
      }
      if (spinValue <=0.25)
      {
        extreme = false;
      }
      if (spinValue <=1 && extreme == false)
      {
        spinValue += 0.05;
      }
      if (spinValue >=1)
      {
        extreme = true;
      }
    }
  }
}
