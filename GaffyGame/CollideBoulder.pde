class CollisionSolids
{

  float xPos, yPos, xScale, yScale;
  int d;
  CollisionSolids(float x, float y, float xs, float ys)
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
    if (((xPos + xScale) < t.boulder.xPos && (xPos +8+ xScale) > t.boulder.xPos) && ((yPos - 16 < t.boulder.yPos) && (yPos + yScale  >= t.boulder.yPos))) //hit a left wall?
    {
      t.boulder.xPos = (xPos + xScale + 8); //stop
    }
    if (((xPos-8 < t.boulder.xPos && (xPos) > t.boulder.xPos) && ((yPos  - 16 < t.boulder.yPos) && (yPos + yScale  >= t.boulder.yPos)))) //hit a right wall?
    {
      t.boulder.xPos = (xPos - 8); //stop
    }
    if ((((yPos+16) < t.boulder.yPos && (yPos + yScale+12) > t.boulder.yPos) && ((xPos < t.boulder.xPos) && (xPos + xScale > t.boulder.xPos)))) //hit ceiling?
    {
      t.boulder.yPos = (yPos + yScale + 14); //stop, *and* properly reset jumps
      t.boulder.yVelocity = 3;
    }
    if (((yPos-20 < t.boulder.yPos && (yPos + yScale+4) > t.boulder.yPos) && ((xPos  - 4 < t.boulder.xPos) && (xPos + 4 + xScale >  t.boulder.xPos)))) //hit floor?
    {
      t.boulder.yPos = (yPos - 20); //stop, *and* properly reset jumps
      t.boulder.yVelocity = 0;
      t.boulder.jumpFlag = 1;
    }
  }
}
