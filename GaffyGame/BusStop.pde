class BusStop
{
  float xPos, yPos;
  int d;
  BusStop(float x, float y)
  {
    xPos = x;    //Horizontal Position
    yPos = y;    //Vertical Position
    d=3;
  }
  void Render()
  {
    fill(#bb5244);
    rect((xPos+16)*d, yPos*d, 112*d, 80*d, 8*d);
    rect((xPos+6)*d, (yPos-16)*d, 4*d, 128*d);
    fill(#703129);
    rect((xPos+16)*d, (yPos+16)*d, 112*d, 80*d);

    circle((xPos+8)*d, (yPos-16)*d, 16*d);
    fill(#fcc900);
    arc((xPos+8)*d, (yPos-16)*d, 16*d, 16*d, 0.25, (PI-0.25), CHORD);
    if ((t.p1.xPos > xPos+6) && (t.p1.yPos > yPos-32))
    {
      if (t.levelClear == false)
      {
        t.levelClear = true;
      }
    }
  }
}
