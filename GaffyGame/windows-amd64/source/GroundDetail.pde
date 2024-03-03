class GroundDetail
{
  float xPos, yPos;
  int xTile, yTile, id, d;

  GroundDetail(float x, float y, int w, int h)
  {
    xPos = x;
    yPos = y;
    xTile = w;
    yTile = h;
  }


  void Render()
  {
    d=3;
    noStroke(); //draw the ground details
    fill(#c19571);
    quad((xPos+(xTile*16))*d, (yPos+6+(yTile*16))*d, (xPos+8+(xTile*16))*d, (yPos+10+(yTile*16))*d, (xPos+8+(xTile*16))*d, (yPos+14+(yTile*16))*d, (xPos+(xTile*16))*d, (yPos+10+(yTile*16))*d);
    quad((xPos+16+(xTile*16))*d, (yPos+6+(yTile*16))*d, (xPos+8+(xTile*16))*d, (yPos+10+(yTile*16))*d, (xPos+8+(xTile*16))*d, (yPos+14+(yTile*16))*d, (xPos+16+(xTile*16))*d, (yPos+10+(yTile*16))*d);
  }
}
