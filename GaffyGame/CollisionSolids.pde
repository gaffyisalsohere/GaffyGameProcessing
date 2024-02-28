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
    if (((xPos + xScale) < t.l1.p1.xPos && (xPos +8+ xScale) > t.l1.p1.xPos) && ((yPos - 16 < t.l1.p1.yPos) && (yPos + yScale  >= t.l1.p1.yPos))) //hit a left wall?
    {
      t.l1.p1.xPos = (xPos + xScale + 8); //stop
    }
    if (((xPos-8 < t.l1.p1.xPos && (xPos) > t.l1.p1.xPos) && ((yPos  - 16 < t.l1.p1.yPos) && (yPos + yScale  >= t.l1.p1.yPos)))) //hit a right wall?
    {
      t.l1.p1.xPos = (xPos - 8); //stop
    }
    if ((((yPos+16) < t.l1.p1.yPos && (yPos + yScale+12) > t.l1.p1.yPos) && ((xPos < t.l1.p1.xPos) && (xPos + xScale > t.l1.p1.xPos)))) //hit ceiling?
    {
      t.l1.p1.yPos = (yPos + yScale + 14); //stop, *and* properly reset jumps
      t.l1.p1.yVelocity = 3;
    }
    if (((yPos-20 < t.l1.p1.yPos && (yPos + yScale+4) > t.l1.p1.yPos) && ((xPos  - 4 < t.l1.p1.xPos) && (xPos + 4 + xScale >  t.l1.p1.xPos)))) //hit floor?
    {
      t.l1.p1.yPos = (yPos - 20); //stop, *and* properly reset jumps
      t.l1.p1.yVelocity = 0;
      t.l1.p1.jumpFlag = 1;
    }
  }
}
