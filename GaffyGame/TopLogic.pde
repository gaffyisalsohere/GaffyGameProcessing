class TopLogic
{
  Cloud[] manyClouds;
  HUD hud;
  Menu menu;
  Level1 l1;
  Level2 l2;
  Level3 l3;
  Gaffy p1;
  int levelID, d, leveltimer, score, dollers, lives, hp;
  boolean gamemode;
  float xCam, yCam;
  TopLogic()
  { //define objects in TopLogic's Domain.
    d = 3;
    manyClouds = new Cloud[6];
    for (int i = 0; i<manyClouds.length; i+=1)
    { //array-ified clouds, now with random scrolling and speeds
      manyClouds[i] = new Cloud((96+(8*i)+(random(-16, 16)*16)*d), ((56+((8*i)+(random(0, 8))))*d), (random(-0.8, 0.8)));
    }
    hud = new HUD();
    menu = new Menu();

    l1 = new Level1();
    l2 = new Level2();
    l3 = new Level3();
    lives = 3;
    hp = 3;
    leveltimer = 400;
    menu.isDebug=true; //debug flag! set to true for debug mode (a full level select)
  }
  void GameLoop()
  {
    leveltimer--;
    gamemode = menu.choicerGM(gamemode);
    //Common Rendering: BG
    background(24, 2, 44);
    fill(#ffde66);
    circle (32*d, 64*d, 48*d);
    fill(24, 2, 44);
    circle(48*d, 64*d, 48*d);
    for (int i = 0; i<manyClouds.length; i+=1)
    {
      manyClouds[i].Render();
    }

    //CAMERA LOGIC

    //Level and Gamemode Logic
    if (menu.choicerGM(gamemode) == false)
    {
      menu.keyHandler();
      menu.choicerCredits();
      //menu.choicerLevel(levelID);
      //menu.choicerGM(gamemode);
      menu.Render();
    }
    if (menu.choicerGM(gamemode) == true)
    {
      //Common Level Calls
      hud.levelID = menu.choicerLevel(levelID);
      //Level-Specific calls
      if (menu.choicerLevel(levelID) == 1)
      {
        xCam = l1.p1.xPos - 128;
        yCam = l1.p1.yPos - 128;
        if (xCam < 0)
        {
          xCam = 0;
        }
        if (xCam > 768)
        {
          xCam = 768;
        }
        if (yCam < 0)
        {
          yCam = 0;
        }
        if (yCam > 256)
        {
          yCam = 256;
        }
        translate((-xCam)*3, (-yCam)*3);
        l1.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (menu.choicerLevel(levelID) == 2)
      {
        xCam = l2.p1.xPos - 128;
        yCam = l2.p1.yPos - 128;
        if (xCam < 0)
        {
          xCam = 0;
        }
        if (xCam > 768)
        {
          xCam = 768;
        }
        if (yCam < 0)
        {
          yCam = 0;
        }
        if (yCam > 256)
        {
          yCam = 256;
        }
        translate((-xCam)*3, (-yCam)*3);
        l2.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (menu.choicerLevel(levelID) == 3)
      {
        xCam = l3.p1.xPos - 128;
        yCam = l3.p1.yPos - 128;
        if (xCam < 0)
        {
          xCam = 0;
        }
        if (xCam > 768)
        {
          xCam = 768;
        }
        if (yCam < 0)
        {
          yCam = 0;
        }
        if (yCam > 256)
        {
          yCam = 256;
        }
        translate((-xCam)*3, (-yCam)*3);
        l3.Render();
        translate((xCam)*3, (yCam)*3);
      }

      //Common Rendering: HUD
      hud.Render();
    }
  }
}
