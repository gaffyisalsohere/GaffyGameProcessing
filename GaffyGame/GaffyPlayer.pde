class Gaffy
{//its me!
  float xPos, yPos, grabX, grabY, xSpeed, ySpeed, gravity, yVelocity, jumpModifier, jumpFlag, tailAngle, hammerHitX, hammerHitY;
  int d, animTimer, dir, grabbingID, hammerTime, score, dollers, leveltimer, health, iframe;
  boolean keyw, keya, keys, keyd, keyj, keyk, keyl, isGrabbing, hammerUse;

  //for whatever reason including these variables here makes things nicer
  boolean gm; //gamemode handler; false is menu, true is level
  int level;  //level tracker

  Gaffy(float x, float y, int f, float j, int hp)
  {
    d = 3;
    xPos = x + 8;    //Horizontal Position
    yPos = y + 12;   //Vertical Position
    dir = f;         //facing
    jumpFlag = j;    //is gaffy jumping?
    jumpModifier = 0;//modify graphic for jumps
    gm = false;
    health = hp;
  }


  void Render()
  {
    if (iframe >0)
    {
      iframe--;
    }
    tailAngle=30;
    d = 3;
    gravity = 0.15; // hacky physics in this object! featuring a hacky collision engine! im proud of this!
    //test square; not gonna be gaffy's real shape lol
    //fill(255);
    //rect((xPos)*d, (yPos)*d, (32*d), (32*d));
    //DRAW GAFFY...
    if (dir == 0)
    {//.. facing left
      //tail
      translate((xPos+10)*d, (yPos+8)*d);
      rotate(radians(-tailAngle));
      fill(#1765bb);
      ellipse(0*d, 0*d, 15*d, 10*d);
      fill(#0c3460);
      arc(0, (0)*d, 15*d, 10*d, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
      fill(255);
      triangle((3)*d, (-5)*d, (3)*d, (5)*d, (13)*d, (0)*d);
      rotate(radians(tailAngle));
      translate((-(xPos+10)*d), (-(yPos+8)*d));
      fill(#1765bb);  //back arm
      circle((xPos-3-(2*jumpModifier))*d, (yPos+8.5-(12*jumpModifier))*d, 5*d);
      fill(#0c3460);
      ellipse((xPos-5-(2*jumpModifier))*d, (yPos+9.5-(16*jumpModifier))*d, 6*d, 4*d);
      fill(#1765bb);  //torso
      ellipse(xPos*d, (yPos+8)*d, (13*d), (11*d));
      //paws
      fill(#1765bb);
      ellipse((xPos-1.5-(1*jumpModifier))*d, (yPos+16-(3*jumpModifier))*d, 4*d, 8*d);
      fill(#0c3460);
      arc((xPos-2-(1*jumpModifier))*d, (yPos+20-(3*jumpModifier))*d, (8*d), (6*d), PI, TWO_PI);
      fill(#1765bb);
      ellipse(((xPos+2.5))*d, (yPos+16+(0.5*jumpModifier))*d, 4*d, 8*d);
      fill(#0c3460);
      arc(((xPos+2))*d, ((yPos+20+(0.5*jumpModifier))*d), (8*d), (6*d), PI, TWO_PI);
      fill(0);        //shirt
      arc(xPos*d, (yPos+8)*d, (13*d), (11*d), PI-0.85, TWO_PI+0.85, CHORD);
      fill(#1765bb);  //front arm
      circle((xPos+1+(1*jumpModifier))*d, (yPos+8.5+jumpModifier)*d, 5*d);
      fill(#0c3460);
      ellipse((xPos-1+(4*jumpModifier))*d, (yPos+9.5+jumpModifier)*d, 6*d, 4*d);
      fill(#0c3460);  //back ear
      triangle((xPos+1)*d, (yPos-7)*d, (xPos-6)*d, (yPos-4)*d, (xPos-3)*d, (yPos-14)*d);
      fill(#1765bb);  //head base
      ellipse(xPos*d, (yPos-1)*d, (13*d), (12*d));
      triangle((xPos+1)*d, (yPos-7)*d, (xPos-6)*d, (yPos-3)*d, (xPos-8)*d, (yPos-8)*d);
      fill(255);
      fill(#ec1ded);
      ellipse((xPos-2)*d, (yPos-2)*d, 1*d, 2*d);
      ellipse((xPos-4)*d, (yPos-2)*d, 1*d, 2*d);
      fill(255);      //muzzle
      ellipse((xPos-2)*d, (yPos+2)*d, (18*d), (6*d));
      fill(0);        //nose
      circle((xPos-10)*d, (yPos+1)*d, (3*d));
      fill(#0c3460);  //front ear
      triangle((xPos-1)*d, (yPos-7)*d, (xPos+6)*d, (yPos-4)*d, (xPos+3)*d, (yPos-14)*d);
      fill(255);      //ear fill
      triangle((xPos)*d, (yPos-8)*d, (xPos+4.5)*d, (yPos-5.5)*d, (xPos+3)*d, (yPos-13)*d);
      grabX = xPos-24;
      grabY = yPos;
    }


    if (dir == 1)
    {//...facing right
      //tail
      translate((xPos-10)*d, (yPos+8)*d);
      rotate(radians(240-tailAngle));
      fill(#1765bb);
      ellipse(0*d, 0*d, 15*d, 10*d);
      fill(#0c3460);
      arc(0, (0)*d, 15*d, 10*d, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
      fill(255);
      triangle((3)*d, (-5)*d, (3)*d, (5)*d, (13)*d, (0)*d);
      rotate(radians(-(240-tailAngle)));
      translate((-(xPos-10)*d), (-(yPos+8)*d));
      fill(#1765bb);  //back arm
      circle((xPos+3+(2*jumpModifier))*d, (yPos+8.5-(12*jumpModifier))*d, 5*d);
      fill(#0c3460);
      ellipse((xPos+5+(2*jumpModifier))*d, (yPos+9.5-(16*jumpModifier))*d, 6*d, 4*d);
      fill(#1765bb);  //torso
      ellipse(xPos*d, (yPos+8)*d, (13*d), (11*d));
      //paws
      fill(#1765bb);
      ellipse((xPos+1.5+(1*jumpModifier))*d, (yPos+16-(3*jumpModifier))*d, 4*d, 8*d);
      fill(#0c3460);
      arc((xPos+2+(1*jumpModifier))*d, (yPos+20-(3*jumpModifier))*d, (8*d), (6*d), PI, TWO_PI);
      fill(#1765bb);
      ellipse((xPos-2.5)*d, (yPos+16+(0.5*jumpModifier))*d, 4*d, 8*d);
      fill(#0c3460);
      arc((xPos-2)*d, (yPos+20+(0.5*jumpModifier))*d, (8*d), (6*d), PI, TWO_PI);
      fill(0);        //shirt
      arc(xPos*d, (yPos+8)*d, (13*d), (11*d), PI-0.85, TWO_PI+0.85, CHORD);
      fill(#1765bb);  //front arm
      circle((xPos-1-(1*jumpModifier))*d, (yPos+8.5+jumpModifier)*d, 5*d);
      fill(#0c3460);
      ellipse((xPos+1-(4*jumpModifier))*d, (yPos+9.5+jumpModifier)*d, 6*d, 4*d);
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
      grabX = xPos+8;
      grabY = yPos;
    }
  }
  void gaffyLogic()
  {
    t.p1.hammerUse = hammerUse;
    if (hammerUse == true)
    {

      hammerUse = false;
      hammerTime =30;
    }
    if (hammerTime < -30) //hammer attack
    {
      hammerTime = -30;
    }
    if (hammerTime > 0)
    {
      if (dir == 0)
      {
        fill(#9b6b16);
        rect((xPos-32)*d, (yPos+8)*d, 24*d, 4*d);
        fill(32);
        rect((xPos-30)*d, (yPos+2)*d, 10*d, 16*d);
        hammerHitX = xPos-32;
        hammerHitY = yPos+2;
      }
      if (dir == 1)
      {
        fill(#9b6b16);
        rect((xPos+8)*d, (yPos+8)*d, 24*d, 4*d);
        fill(32);
        rect((xPos+20)*d, (yPos+2)*d, 10*d, 16*d);
        hammerHitX = xPos+8;
        hammerHitY = yPos+2;
      }
    }
    hammerTime --;
    hammerTime = t.p1.hammerTime;
    if (yPos  >= 528 || t.leveltimer < 0) //placeholder respawn
    {
      xPos = 64;
      yPos = 384;
      t.hp = 3;
      t.lives = t.lives-1;
      t.leveltimer = 23999;
    }
    //JUMPING LOGIC
    //jumpFlag -=1;
    yPos = (yPos + (yVelocity));     //bad physics sim
    yVelocity = yVelocity + gravity;
    if (yVelocity >=10)
    {
      yVelocity = 10;
    }

    if (jumpFlag == 1)
    {
      jumpModifier = 0;
    }
    if (jumpFlag == 0)
    {
      jumpModifier=1;
      yPos = (yPos - 7 + (yVelocity));
    }

    if (t.gamemode == true)
    {
      if (keyj == true)
      {
        jumpFlag = 0;
      }
      if (keyj == false)
      {
      }
      if (keya == true)
      {
        dir = 0;
        xPos -=1.5;
      }
      if (keya == false)
      {
        xPos +=0;
      }
      if (keyd == true)
      {
        dir = 1;
        xPos +=1.5;
      }
      if (keyd == false)
      {

        xPos +=0;
      }
      if (keyk == true) //complicated grab logic
      {
        isGrabbing = true;
      }
      if (keyk == false)
      {
        isGrabbing = false;
        grabbingID = 0;
      }
      if (keyl == true) //attack; likely debug placement for now
      {
        if (hammerTime <= 0)
        {
          hammerUse = true;
        }
      }
      if (keyl == false)
      {
      }
      if (xPos < 12)
      {
        xPos = 12;
      }
      if (xPos > 1012)
      {
        xPos = 1012;
      }
    }
  }
  void keyStart(char k)
  {
    if (keyPressed == true)
    {
      if (k == 'a')
      {
        keya = true;
      }
      if (k == 'd')
      {
        keyd = true;
      }
      if (k == 'w')
      {
        keyw = true;
      }
      if (k == 's')
      {
        keys = true;
      }
      if (k == 'j')
      {
        keyj = true;
      }
      if (k == 'k')
      {
        keyk = true;
      }
      if (k == 'l')
      {
        keyl = true;
      }
    }
  }
  void keyStop(char k)
  {
    if (keya == true && k == 'a')
    {
      keya = false;
    }
    if (keyd == true && k == 'd')
    {
      keyd = false;
    }
    if (keyw == true && k == 'w')
    {
      keyw = false;
    }
    if (keys == true && k == 's')
    {
      keys = false;
    }
    if (keyj == true && k == 'j')
    {
      keyj = false;
    }
    if (keyk == true && k == 'k')
    {
      keyk = false;
    }
    if (keyl == true && k == 'l')
    {
      keyl = false;
    }
  }
}
