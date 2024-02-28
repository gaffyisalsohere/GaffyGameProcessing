class Cloud
{ //modified from Assign 2's clouds. Now they finally scroll!
  float xPos, yPos, xSpeed;
  int d;
  Cloud(float x, float y, float s)
  {
    xPos = x;    //Horizontal Position
    yPos = y;    //Vertical Position
    xSpeed = s;  //Scrolling Speed
  }
  void Render()
  {
    //Draw Clouds
    d=3;
    noStroke();
    fill(#749093);
    ellipse(xPos-(8*d), yPos-(3*d), 32*d, 16*d);   // 4 dark ellipse
    ellipse(xPos+(8*d), yPos-(3*d), 32*d, 16*d);
    fill(#8CAFB2);
    ellipse(xPos-(12*d), yPos, 32*d, 16*d);     // 2 mid ellipse
    ellipse(xPos+(12*d), yPos, 32*d, 16*d);
    fill(#B3CACB);
    ellipse(xPos, yPos, 32*d, 16*d);       // 2 light ellipse
    ellipse(xPos, yPos-(3*d), 24*d, 24*d);     // 1 taller
    //Move Clouds
    xPos += xSpeed;
    if (xPos <(-64*d))
    {
      xPos = 306*d;
    }
    if (xPos > (320*d))
    {
      xPos = -50*d;
    }
  }
}
