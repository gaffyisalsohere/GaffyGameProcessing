class HUD
{
  int d, levelID, displaytimer;
  float xPos, yPos;
  PFont Menu;
  HUD()
  {
    Menu = createFont("menu.ttf", 24);
  }

  void Render()
  {
    {
      d = 3; //everything is *3 in this image to emulate snes 256x224 resolution.
      fill(#9b6b16); //HUD, work in progress
      rect(0*d, 0*d, 256*d, 48*d);
      fill(#e1ae3f);
      rect(1*d, 1*d, 254*d, 46*d);
      fill(240);
      rect(4*d, 4*d, 248*d, 40*d);

      //icons
      fill (150);     //controller, used for score
      rect(21*d, 8*d, 18*d, 12*d);
      ellipse(20*d, 16*d, 14*d, 16*d);
      ellipse(40*d, 16*d, 14*d, 16*d);
      circle(20*d, 32*d, 16*d); //dollers (intentional spelling) count
      fill(#e1ae3f);  // level minimap bg
      rect(144*d, 8*d, 96*d, 32*d);
      circle(87*d, 32*d, 16*d); //timer
      fill(255);
      circle(87*d, 32*d, 14*d);
      fill(#1765bb);   //health meter
      if (t.hp >=1)
      {
        ellipse(112*d, 16*d, 7*d, 15*d);
      }
      if (t.hp >=2)
      {
        ellipse(120*d, 16*d, 7*d, 15*d);
      }
      if (t.hp ==3)
      {
        ellipse(128*d, 16*d, 7*d, 15*d);
      }
      xPos = 160;     //vestigial variables from Gaffy render script, didn't feel like rewriting them entirely
      yPos = 32;      //used for life counter
      fill(#0c3460);  //back ear
      triangle((xPos-1)*d, (yPos-7)*d, (xPos+6)*d, (yPos-4)*d, (xPos+3)*d, (yPos-14)*d);
      fill(#1765bb);  //head base
      ellipse(xPos*d, (yPos-1)*d, (13*d), (12*d));
      triangle((xPos-1)*d, (yPos-7)*d, (xPos+6)*d, (yPos-3)*d, (xPos+8)*d, (yPos-8)*d);
      fill(255);
      fill(#ec1ded);
      ellipse((xPos+2)*d, (yPos-2)*d, 1*d, 2*d);
      ellipse((xPos+4)*d, (yPos-2)*d, 1*d, 2*d);
      fill(255);      //muzzle
      ellipse((xPos+2)*d, (yPos+2)*d, (18*d), (6*d));
      fill(0);        //nose
      circle((xPos+10)*d, (yPos+1)*d, (3*d));
      fill(#0c3460);  //front ear
      triangle((xPos+1)*d, (yPos-7)*d, (xPos-6)*d, (yPos-4)*d, (xPos-3)*d, (yPos-14)*d);
      fill(255);      //ear fill
      triangle((xPos)*d, (yPos-8)*d, (xPos-4.5)*d, (yPos-5.5)*d, (xPos-3)*d, (yPos-13)*d);
      displaytimer = t.leveltimer/60;
      //text
      textAlign(LEFT, TOP);
      fill(255);
      textFont(Menu);
      text("LVL 1-" + levelID, 176*d, 16*d);
      //text("x"+t.lives, 176*d, 28*d);
      fill(0);
      text(t.score, 48*d, 16*d);
      text("D" + t.dollers, 32*d, 32*d);
      text(displaytimer, 96*d, 32*d);
    }
  }
}
