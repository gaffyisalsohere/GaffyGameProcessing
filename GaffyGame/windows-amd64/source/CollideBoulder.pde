class CollideBoulder
{

  float xPos, yPos, xScale, yScale;
  int d;
  CollideBoulder(float x, float y, float xs, float ys)
  {
    xPos = x;
    yPos = y;
    xScale = xs;
    yScale = ys;
  }
  void Collide()
  {


    d=3;
    fill(255); //draw test solid
    //rect(xPos*d, yPos*d, xScale*d, yScale*d);
    if (((xPos + xScale) < t.boulder.xPos && (xPos +24+ xScale) > t.boulder.xPos) && ((yPos +4 < t.boulder.yPos) && (yPos + yScale  >= t.boulder.yPos))) //hit a left wall?
    {
      t.boulder.xPos = (xPos + xScale+24); //stop
      t.boulder.xVelocity = 0;

    }
    if (((xPos-24 < t.boulder.xPos && (xPos) > t.boulder.xPos) && ((yPos +4< t.boulder.yPos) && (yPos + yScale  >= t.boulder.yPos)))) //hit a right wall?
    {
      t.boulder.xPos = (xPos -24); //stop
      t.boulder.xVelocity = 0;

    }
    if (((yPos < t.boulder.yPos && (yPos + yScale+4) > t.boulder.yPos) && ((xPos  - 4 < t.boulder.xPos) && (xPos + 4 + xScale >  t.boulder.xPos)))) //hit floor?
    {
      t.boulder.yPos = (yPos); //stop, *and* properly reset jumps
      t.boulder.yVelocity = 0;

      //t.boulder.jumpFlag = 1;
    }
  }
}
