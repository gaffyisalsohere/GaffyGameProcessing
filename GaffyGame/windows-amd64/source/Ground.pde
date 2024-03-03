class Ground
{
  GroundDetail[] detail;
  CollisionSolids collide;
  CollideBoulder collideB;
  float xPos, yPos;
  int d, xScale, yScale, id, tileX, tileY, tileTotal;
  Ground(float x, float y, int xs, int ys)
  {
    xPos = x;
    yPos = y;
    xScale = xs;
    yScale = ys;
    tileX = xScale/16;
    tileY = yScale/16;
    tileTotal = (tileX*tileY);
  }

  void Render()
  {
    detail = new GroundDetail[tileTotal];
    int id = 0;
    for (int yTile = 0; yTile < tileY; yTile++)
    {
      for (int xTile = 0; xTile < tileX; xTile++)
      {
        detail[id] = new GroundDetail(xPos, yPos, xTile, yTile);
        id++;
      }
    }

    collide = new CollisionSolids(xPos, yPos, xScale, yScale);
    collideB = new CollideBoulder(xPos, yPos, xScale, yScale); //hook collision into it
    d=3;
    if (yScale < 16)
    {
      yScale = 16;
    }
    if (xScale < 16)
    {
      xScale = 16;
    }
    collide.Collide();
    collideB.Collide();
    noStroke(); //draw the ground
    fill(#8c633c);
    rect(xPos*d, yPos*d, xScale*d, yScale*d);
    fill(#00b800);
    rect(xPos*d, yPos*d, xScale*d, 4*d);
    for (int i = 0; i < detail.length; i++)
    {
      detail[i].Render();
    }
  }
}
