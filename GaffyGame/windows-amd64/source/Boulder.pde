class Boulder
{
  CollideBoulder collide;
  float xPos, yPos, xVelocity, yVelocity, gravity;
  int d, rolling;
  Boulder(float x, float y)
  {
    xPos = x;    //Horizontal Position
    yPos = y;    //Vertical Position
    d = 3;
    gravity = 0.15;
  }
  void Render()
  {
    yPos = (yPos + (yVelocity));     //bad physics sim
    yVelocity = yVelocity + gravity;
    if (yVelocity >=10)
    {
      yVelocity = 10;
    }
    xPos = xPos+xVelocity;
    fill(135);
    ellipse(xPos*d, (yPos-24)*d, 48*d, 48*d);
    if (t.p1.hammerTime > 0 && t.p1.dir == 0)
    {
      if ((xPos > t.p1.hammerHitX-(96)) && ((xPos+(48) < t.p1.hammerHitX+(96))))
      {
        if (yPos-24 > t.p1.hammerHitY -(96) && (yPos+(24) < t.p1.hammerHitY+(96)))
        {
          rolling = 1;
          //println("hit! left");
          xVelocity = -1;
        }
      }
    }
    if (t.p1.hammerTime > 0 && t.p1.dir == 1)
    {
      if ((xPos > t.p1.hammerHitX-(96)) && ((xPos+(48) < t.p1.hammerHitX+(96))))
      {
        if (yPos-24 > t.p1.hammerHitY -(96) && (yPos+(24) < t.p1.hammerHitY+(96)))
        {
          rolling = 2;
          //println("hit! right");
          xVelocity = 1;
        }
      }
    }
    if (((xPos) < t.p1.xPos && (xPos + 32) > t.p1.xPos) && ((yPos - 24 < t.p1.yPos) && (yPos + 24  >= t.p1.yPos))) //hit a left wall?
    {
      if (rolling ==2 && t.p1.iframe == 0)
      {
        t.p1.iframe = 60;
        t.p1.yPos = t.p1.yPos-1;
        t.p1.yVelocity = -1;
        t.hp -= 1;
      }
      t.p1.xPos = (xPos + 32); //stop
      //println("left");
    }

    if (((xPos-32 < t.p1.xPos && (xPos) > t.p1.xPos) && ((yPos  - 24 < t.p1.yPos) && (yPos + 24  >= t.p1.yPos)))) //hit a right wall?
    {
      if (rolling ==1 && t.p1.iframe == 0)
      {
        t.p1.iframe = 60;
        t.p1.yPos = t.p1.yPos-1;
        t.p1.yVelocity = -1;
        t.hp -= 1;
      }
      t.p1.xPos = (xPos - 32); //stop
      //println("right");
    }

    if (((yPos-68 < t.p1.yPos && (yPos - 40) > t.p1.yPos) && ((xPos  - 28 < t.p1.xPos) && (xPos + 28 >  t.p1.xPos)))) //hit floor?
    {
      t.p1.yPos = (yPos - 68); //stop, *and* properly reset jumps
      t.p1.yVelocity = 0;
      t.p1.jumpFlag = 1;
      //println("floor");
    }
  }
}
