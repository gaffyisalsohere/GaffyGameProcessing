class Hitbox
{
  BoxAll boxes;
  float xPos, yPos, xScale, yScale;
  int d;
  boolean dead, safe, painful;
  Hitbox(float x, float y, float xs, float ys)
  {
    xPos = x;
    yPos = y;
    xScale = xs;
    yScale = ys;
    dead = false;
  }
  void Collide()
  {


    d=3;
    fill(255); //draw test solid
    //rect(xPos*d, yPos*d, xScale*d, yScale*d);
    if (t.p1.iframe == 0) //don't hit again if recovering
    {
      if (((xPos + xScale -8) < t.p1.xPos && (xPos +8+ xScale) > t.p1.xPos) && ((yPos - 16 < t.p1.yPos) && (yPos + yScale  >= t.p1.yPos))) //bumped side?
      {
        t.p1.iframe = 60;

        t.p1.yPos = t.p1.yPos-1;
        t.p1.yVelocity = -.15;
        t.hp -= 1;
      }
      //if (((xPos-8 < t.p1.xPos && (xPos) > t.p1.xPos) && ((yPos  - 16 < t.p1.yPos) && (yPos + yScale  >= t.p1.yPos)))) //bumped right?
      //{
      //  t.p1.iframe = 60;

      //  t.p1.yPos = t.p1.yPos-1;
      //  t.p1.yVelocity = -.15;
      //  t.hp -= 1;
      //}
    }
    if (dead == false)
    {
      if (((((yPos-20 < t.p1.yPos && (yPos+yScale) > t.p1.yPos) && ((xPos  - 8 < t.p1.xPos) && (xPos + 8 + xScale >  t.p1.xPos))) && t.p1.jumpFlag == 0)) && safe == true) //jumped on?
      {
        t.p1.yPos = (yPos - 20); //bounce off, kill the enemy
        t.p1.yVelocity = -.3;
        dead = true;
        t.score += 100;
      }
      if ((t.p1.hammerTime>0) && ((yPos-20 < t.p1.hammerHitY && (yPos+yScale) > t.p1.hammerHitY) && (xPos  - 16*d < t.p1.hammerHitX) && (xPos + xScale >  t.p1.hammerHitX)))
      {
        dead = true;
        t.score += 100;
      }
      if ((xPos > t.boulder.xPos-(20)) && ((xPos+(20) < t.boulder.xPos+(20))))
      {
        if (yPos > t.boulder.yPos -(20) && (yPos+(20) < t.boulder.yPos+(20)))
        {
          dead = true;
          t.score += 100;
          //println("hit!");
        }
      }
      if (t.levelID == 1)
      {
        for (int i = 1; i < t.l1.boxes.boxes.length; i++)
        {
          if ((((yPos-20 < t.l1.boxes.boxes[i].yPos && (yPos+yScale) > t.l1.boxes.boxes[i].yPos) && ((xPos  - 4 < t.l1.boxes.boxes[i].xPos) && (xPos + 4 + xScale >  t.l1.boxes.boxes[i].xPos)))) && t.l1.boxes.boxes[i].painful == true)
          {
            dead = true;
            t.score += 100;
            t.l1.boxes.boxes[i].smashed = true;
          }
        }
      }
      if (t.levelID == 2)
      {
        for (int i = 1; i < t.l2.boxes.boxes.length; i++)
        {
          if ((((yPos-20 < t.l2.boxes.boxes[i].yPos && (yPos+yScale) > t.l2.boxes.boxes[i].yPos) && ((xPos  - 4 < t.l2.boxes.boxes[i].yPos) && (xPos + 4 + xScale >  t.l2.boxes.boxes[i].yPos))))&& t.l2.boxes.boxes[i].painful == true)
          {
            dead = true;
            t.score += 100;
            t.l2.boxes.boxes[i].smashed = true;
          }
        }
      }
      if (t.levelID == 3)
      {
        for (int i = 1; i < t.l3.boxes.boxes.length; i++)
        {
          if ((((yPos-20 < t.l3.boxes.boxes[i].yPos && (yPos+yScale) > t.l3.boxes.boxes[i].yPos) && ((xPos  - 4 < t.l3.boxes.boxes[i].yPos) && (xPos + 4 + xScale >  t.l3.boxes.boxes[i].yPos))))&& t.l3.boxes.boxes[i].painful == true)
          {
            dead = true;
            t.score += 100;
            t.l3.boxes.boxes[i].smashed = true;
          }
        }
      }
    }
  }
}
