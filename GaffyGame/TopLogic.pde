class TopLogic
{
  Cloud[] manyClouds;
  HUD hud;
  Menu menu;
  Level1 l1;
  Level2 l2;
  Level3 l3;
  Gaffy p1;
  Boulder boulder;
  String vernum;
  int levelID, d, leveltimer, score, dollers, lives, hp, endTimer;
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
    Boulder boulder;
    p1 = new Gaffy(64, 384, 0, 90, 3);
    boulder = new Boulder(448, 384);
    l1 = new Level1();
    l2 = new Level2();
    l3 = new Level3();
    lives = 3;
    hp = 3;
    leveltimer = 23999;
    menu.isDebug=true; //debug flag! set to true for debug mode (a full level select and fps meter)
    endTimer = 300;
  }
  void GameLoop()
  {
    text(vernum, 1024, 1024);
    //println(t.menu.choicerLevel(levelID));
    if (dollers >= 100)
    {
      lives++;
      dollers = 0;
    }
    if (t.p1.gameover == true)
    {
      endTimer --;
    }
    if (endTimer <= 0)
    {
      exit();
      //menu.keyj = false;
      //menu.choicerGM(true) = false;
    }
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
    //Camera Logic
    xCam = p1.xPos - 128;
    yCam = p1.yPos - 96;
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
    //Level and Gamemode Logic
    if (menu.choicerGM(gamemode) == false)
    {
      leveltimer = 23999;
      p1.gaffyLogic();
      p1.xPos = 48;
      p1.yPos = 172;
      p1.dir = 1;
      p1.Render();
      menu.keyHandler();
      menu.choicerCredits();
      //menu.choicerLevel(levelID);
      //menu.choicerGM(gamemode);
      menu.Render();
    }
    if (menu.choicerGM(gamemode) == true)
    {
      //Level-Specific calls
      if (menu.choicerLevel(levelID) == 1)
      {

        translate((-xCam)*3, (-yCam)*3);
        p1.gaffyLogic();
        l1.Render();
        p1.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (menu.choicerLevel(levelID) == 2)
      {

        translate((-xCam)*3, (-yCam)*3);
        l2.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (menu.choicerLevel(levelID) == 3)
      {

        translate((-xCam)*3, (-yCam)*3);
        l3.Render();
        translate((xCam)*3, (yCam)*3);
      }
      //Common Rendering: HUD
      hud.levelID = menu.choicerLevel(levelID);
      hud.Render();
    }
    if (menu.isDebug == true)
    {
      textAlign(LEFT, TOP);
      fill(255);
      text(nf(frameRate, 3, 1)+"fps", -8*d, 216*d);
    }
  }
}
