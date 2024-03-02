class Boulder
{
  float xPos, yPos;
  int d, rolling;
  Boulder(float x, float y)
  {
    xPos = x;    //Horizontal Position
    yPos = y;    //Vertical Position
    d = 3;
  }
  void Render()
  {
    fill(135);
    ellipse(xPos*d, (yPos-24)*d, 48*d, 48*d);
    if (t.p1.hammerTime > 0 && t.p1.dir == 0)
    {
      if ((xPos > t.p1.hammerHitX-(96)) && ((xPos+(48) < t.p1.hammerHitX+(96))))
      {
        if (yPos-24 > t.p1.hammerHitY -(96) && (yPos+(24) < t.p1.hammerHitY+(96)))
        {
          rolling = 1;
          println("hit! left");
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
          println("hit! right");
        }
      }
    }
  }
}
