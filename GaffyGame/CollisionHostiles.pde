class Hitbox
{

  float xPos, yPos, xScale, yScale;
  int d;
  boolean dead;
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
    rect(xPos*d, yPos*d, xScale*d, yScale*d);
    if (t.p1.iframe >0) //don't hit again if recovering
    {
      if (((xPos + xScale) < t.p1.xPos && (xPos +8+ xScale) > t.p1.xPos) && ((yPos - 16 < t.p1.yPos) && (yPos + yScale  >= t.p1.yPos))) //bumped left?
      {
        t.p1.xPos = (xPos + xScale + 8); //stop
        t.p1.iframe = 30;
        t.p1.hitDir = 1;
      }
      if (((xPos-8 < t.p1.xPos && (xPos) > t.p1.xPos) && ((yPos  - 16 < t.p1.yPos) && (yPos + yScale  >= t.p1.yPos)))) //bumped right?
      {
        t.p1.xPos = (xPos - 8);
        t.p1.iframe = 30;
        t.p1.hitDir = 2;
      }
    }
    if (((yPos-20 < t.p1.yPos && (yPos) > t.p1.yPos) && ((xPos  - 4 < t.p1.xPos) && (xPos + 4 + xScale >  t.p1.xPos)))) //jumped on?
    {
      t.p1.yPos = (yPos - 20); //bounce off, kill the enemy
      t.p1.yVelocity = -.3;
      dead = true;
    }
  }
}
