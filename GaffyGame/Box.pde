class Box
{
  GroundAll ground;
  CollisionSolids collide;
  boolean isGrabbed, smashed, grounded;
  float xPos, yPos, yVelocity, xSpeed, gravity;
  int d, xScale, yScale, Scale, id, testvar;
  Box(float x, float y, int s, int i)
  {

    Scale = s;
    xScale = Scale;
    yScale = Scale;
    xPos = x;
    yPos = y;
    id = i;
  }


  void Render()
  {
    d=3;
    if (smashed == false)
    {//DRAW A BOX
      noStroke();
      fill(#443a2c);
      rect(xPos*d, yPos*d, Scale*(16*d), Scale*(16*d));
      fill(#867156);
      rect(xPos*d+(1*Scale*d), yPos*d+(1*Scale*d), Scale*(14*d), Scale*(14*d));
      fill(#60513e);
      rect(xPos*d+(2*Scale*d), yPos*d+(2*Scale*d), Scale*(12*d), Scale*(12*d));
      fill(#867156);
      rect(xPos*d+(3*Scale*d), yPos*d+(3*Scale*d), Scale*(10*d), Scale*(10*d));
      fill(#60513e);
      quad((xPos*d+(3*Scale*d)), yPos*d+(4*Scale*d), (xPos*d+(4*Scale*d)), yPos*d+(3*Scale*d), (xPos*d+(13*Scale*d)), yPos*d+(12*Scale*d), (xPos*d+(12*Scale*d)), yPos*d+(13*Scale*d));
      rect(xPos*d+(3*Scale*d), yPos*d+(3*Scale*d), (d*Scale), (d*Scale));
      rect(xPos*d+(12*Scale*d), yPos*d+(12*Scale*d), (d*Scale), (d*Scale));
    }
  }
  void boxLogic()
  {
    if (smashed == false)
    {
      gravity = 0.15;
      collide = new CollisionSolids(xPos, yPos, xScale*16, yScale*16);
      if (isGrabbed == false || Scale > 1)
      {
        collide.Collide();
        yPos = (yPos + (yVelocity));     //bad physics sim
        yVelocity = yVelocity + gravity;
        if (yVelocity >=10)
        {
          yVelocity = 10;
        }
      }
      //t.p1.hammer logic
      if (t.p1.hammerTime > 0)
      {
        if ((xPos > t.p1.hammerHitX-(16*Scale*2)) && ((xPos+(Scale*16) < t.p1.hammerHitX+(16*Scale*2))))
        {
          if (yPos > t.p1.hammerHitY -(16*Scale*2) && (yPos+(Scale*16) < t.p1.hammerHitY+(16*Scale*2)))
          {
            smashed = true;
            println("hit!");
          }
        }
      }
      //grab logic
      if (t.p1.isGrabbing == false)
      {
        isGrabbed = false;
        xPos = xPos + xSpeed;

        if (xPos < 0)
        {
          xPos = 0;
        }
        if (xPos > 1008)
        {
          xPos = 1008;
        }
      }
      if ((t.p1.isGrabbing == true && Scale == 1) && (t.p1.grabbingID == 0 || t.p1.grabbingID == id))
      {
        if (xPos >= t.p1.grabX && (xPos <= t.p1.grabX+(16*Scale)))
        {
          if (yPos >= t.p1.grabY && (yPos <= t.p1.grabY+(16*Scale)))
          {
            isGrabbed = true;
          }
        }
      }
      if (isGrabbed == true)
      {

        if (t.p1.keya == true)
        {
          xSpeed = -2;
        }
        if (t.p1.keyd == true)
        {
          xSpeed = 2;
        }
        if (t.p1.keyw == true)
        {
          yVelocity = -5;
          xSpeed = 0;
        }
        id = t.p1.grabbingID;
        xPos = t.p1.grabX;
        yPos = t.p1.grabY;
      }
    }
    for (int i = 0; i < grounds.length; i++) //collider, modified from player collider;
    {
      if (((grounds[i].xPos + grounds[i].xScale-(16*Scale)) < xPos && (grounds[i].xPos + grounds[i].xScale) > xPos) && ((grounds[i].yPos - (16*Scale) < yPos) && (grounds[i].yPos + grounds[i].yScale  >= yPos))) //hit a left wall?
      {
        xPos = (grounds[i].xPos + grounds[i].xScale); //stop
        xSpeed = 0;
      }
      if (((grounds[i].xPos-(16*Scale) < xPos && (grounds[i].xPos) > xPos) && ((grounds[i].yPos  - (16*Scale) < yPos) && (grounds[i].yPos + grounds[i].yScale  >= yPos)))) //hit a right wall?
      {
        xPos = (grounds[i].xPos -(16*Scale));
        xSpeed = 0;//stop
      }
      if ((((grounds[i].yPos) < yPos && (grounds[i].yPos + grounds[i].yScale+16) > yPos) && ((grounds[i].xPos < xPos) && (grounds[i].xPos + xScale > xPos)))) //hit ceiling?
      {
        yPos = (grounds[i].yPos + grounds[i].yScale + 18); //stop, *and* properly reset jumps
        yVelocity = 3;
        println(3);
      }
      if (((grounds[i].yPos-(16*Scale) < yPos && (grounds[i].yPos) > yPos) && ((grounds[i].xPos  - 4 < xPos) && (grounds[i].xPos + 4 + grounds[i].xScale >  xPos)))) //hit floor?
      {
        yPos = (grounds[i].yPos - (16*Scale)); //stop, *and* properly reset jumps
        yVelocity = 0;
        xSpeed=0;
      }  //(((yPos-20 < yPos && (yPos + yScale+4) > yPos) && ((xPos  - 4 < xPos) && (xPos + 4 + xScale >  xPos))))
    }
  }
}
