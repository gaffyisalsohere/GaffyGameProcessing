class Level1
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;
  Rat rat1, rat2;
  MadRat mad1;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level1()
  {
    d = 3;

    ground = new GroundAll(1);
    ground.LevelInit();
    doller = new DollerAll(1);
    doller.LevelInit();
    boxes = new BoxAll(1);
    boxes.LevelInit();
    rat1 = new Rat(224*d, 384*d, 0, 192*d, 288*d, 0.8);
    rat2 = new Rat(64*d, 416*d, 0, -64*d, 48*d, 1.2);
    mad1 = new MadRat(512*d, 384*d, 0, 512*d, 640*d, 0.8);
    bus = new BusStop(768, 304)
      ;
  }
  void Render()
  {
    if (lv1.isPlaying() == false && t.levelClear == false)
    {
      lv1.play();
    }
    if (levelInit == false)
    {
      t.p1.spawnX = 64;
      t.p1.spawnY = 384;
      t.p1.xPos = 48;
      t.p1.yPos = 384;
      levelInit = true;
    }

    bus.Render();
    ground.Render();
    doller.Render();
    rat1.Render();
    //rat2.Render();
    //mad1.Render();
    boxes.Render();
  }
}
