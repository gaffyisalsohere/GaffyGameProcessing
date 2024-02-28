/*
    if (t.levelID==3)
    {
      for (int i = 0; i < t.l3.ground.grounds.length; i++) //collider, modified from player collider;
      {
        if (((t.l3.ground.grounds[i].xPos + t.l3.ground.grounds[i].xScale-(16*Scale)) < xPos && (t.l3.ground.grounds[i].xPos + t.l3.ground.grounds[i].xScale) > xPos) && ((t.l3.ground.grounds[i].yPos - (16*Scale) < yPos) && (t.l3.ground.grounds[i].yPos + t.l3.ground.grounds[i].yScale  >= yPos))) //hit a left wall?
        {
          xPos = (t.l3.ground.grounds[i].xPos + t.l3.ground.grounds[i].xScale); //stop
          xSpeed = 0;
        }
        if (((t.l3.ground.grounds[i].xPos-(16*Scale) < xPos && (t.l3.ground.grounds[i].xPos) > xPos) && ((t.l3.ground.grounds[i].yPos  - (16*Scale) < yPos) && (t.l3.ground.grounds[i].yPos + t.l3.ground.grounds[i].yScale  >= yPos)))) //hit a right wall?
        {
          xPos = (t.l3.ground.grounds[i].xPos -(16*Scale));
          xSpeed = 0;//stop
        }
        if ((((t.l3.ground.grounds[i].yPos) < yPos && (t.l3.ground.grounds[i].yPos + t.l3.ground.grounds[i].yScale+16) > yPos) && ((t.l3.ground.grounds[i].xPos < xPos) && (t.l3.ground.grounds[i].xPos + xScale > xPos)))) //hit ceiling?
        {
          yPos = (t.l3.ground.grounds[i].yPos + t.l3.ground.grounds[i].yScale + 18); //stop, *and* properly reset jumps
          yVelocity = 3;
          println(3);
        }
        if (((t.l3.ground.grounds[i].yPos-(16*Scale) < yPos && (t.l3.ground.grounds[i].yPos) > yPos) && ((t.l3.ground.grounds[i].xPos  - 4 < xPos) && (t.l3.ground.grounds[i].xPos + 4 + t.l3.ground.grounds[i].xScale >  xPos)))) //hit floor?
        {
          yPos = (t.l3.ground.grounds[i].yPos - (16*Scale)); //stop, *and* properly reset jumps
          yVelocity = 0;
          xSpeed=0;
        }
        */
        
