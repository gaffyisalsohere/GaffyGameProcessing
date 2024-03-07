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
  String vernum, patch;
  int levelID, d, leveltimer, score, dollers, lives, hp, endTimer, scoreBonus, clearTimer;
  boolean gamemode, levelClear, tallyDone, init, debug, hprecover;
  float xCam, yCam;
  TopLogic()
  { //define objects in TopLogic's Domain.
    debug = true;
    d = 3;
    manyClouds = new Cloud[6];
    for (int i = 0; i<manyClouds.length; i+=1)
    { //array-ified clouds, now with random scrolling and speeds
      manyClouds[i] = new Cloud((96+(8*i)+(random(-16, 16)*16)*d), ((56+((8*i)+(random(0, 8))))*d), (random(-0.8, 0.8)));
    }
    hud = new HUD();
    menu = new Menu();

    p1 = new Gaffy(64, 384, 0, 90, 3);
    boulder = new Boulder(496, 304);
    l1 = new Level1();
    l2 = new Level2();
    l3 = new Level3();
    lives = 3;
    hp = 3;
    leveltimer = 11999;
    menu.isDebug=true; //debug flag! set to true for debug mode (a full level select and fps meter)
    endTimer = 300;
  }
  void GameLoop()
  {
    text(vernum, 1024, 1024);
    //println((levelID));
    if (levelClear == true && clearTimer >= 0)
    {
      if (tallyDone == false)
      {
        scoreBonus = (leveltimer / 60) * 10;
        score =  score + scoreBonus;
        scoreBonus = 0;
        lclear.play();
        lv1.stop();
        lv2.stop();
        lv3.stop();
        clearTimer = 180;
        tallyDone = true;
      }
      clearTimer--;
      if (clearTimer <= 0)
      {

        if (levelID == 3)
        {
          exit();
        }
        if (levelID == 2)
        {

          clearTimer = 180;

          levelID = 3;
        }
        if (levelID == 1)
        {


          clearTimer =180;

          levelID = 2;
        }
      }
    }
    if (dollers % 5 == 0 && hprecover == false)
    {
      hp ++;
      hprecover = true;
    }
        if (dollers % 5 == 1)
    {
      hprecover = false;
    }
        if (hp > 3)
    {
      hp = 3;
    }
    if (dollers >= 15)
    {
      oneup.play();
      lives++;
      dollers -= 15;
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
    if (levelClear == false)
    {
      leveltimer--;
    }
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
      leveltimer = 11999;
      p1.gaffyLogic();
      p1.xPos = 48;
      p1.yPos = 172;
      p1.dir = 1;
      p1.Render();
      menu.keyHandler();
      menu.choicerCredits();
      menu.choicerLevel();
      //menu.choicerGM(gamemode);
      menu.Render();
    }
    if (menu.choicerGM(gamemode) == true)
    {
      title.stop();
      //Level-Specific calls
      if (levelID == 1)
      {

        translate((-xCam)*3, (-yCam)*3);

        p1.gaffyLogic();
        l1.Render();
        boulder.Render();
        p1.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (levelID == 2)
      {
        if (init ==false)
          levelClear = false;
        init =  true;
        translate((-xCam)*3, (-yCam)*3);
        p1.gaffyLogic();
        l2.Render();
        p1.Render();
        translate((xCam)*3, (yCam)*3);
      }
      if (levelID == 3)
      {

        translate((-xCam)*3, (-yCam)*3);
        p1.gaffyLogic();
        l3.Render();
        p1.Render();
        translate((xCam)*3, (yCam)*3);
      }
      //Common Rendering: HUD
      hud.levelID = levelID;
      hud.Render();
    }
    if (debug == true)
    {
      textAlign(LEFT, TOP);
      fill(255);
      text(nf(frameRate, 3, 1)+"fps", -8*d, 216*d);
    }
  }
}
