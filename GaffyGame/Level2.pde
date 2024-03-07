class Level2
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;
  Rat rat1, rat2;
  MadRat mad1;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level2()
  {
    d = 3;

    ground = new GroundAll(2);

    doller = new DollerAll(2);

    boxes = new BoxAll(2);
    //for (int i = 0; i < ground.grounds.length; i++)
    //{
    //  ground.grounds[i].yPos = ground.grounds[i].yPos - 512;
    //}
    //for (int i = 0; i < boxes.boxes.length; i++)
    //{
    //  boxes.boxes[i].yPos = boxes.boxes[i].yPos - 512;
    //}
    //for (int i = 0; i < ground.grounds.length; i++)
    //{
    //  doller.dollers[i].yPos = doller.dollers[i].yPos - 512;
    //}
    ground.LevelInit();
    doller.LevelInit();
    boxes.LevelInit();
    rat1 = new Rat(224*d, 384*d, 0, 192*d, 288*d, 0.8);
    rat2 = new Rat(512*d, 304*d, 0, 512*d, (592)*d, 1.2);
    mad1 = new MadRat(688*d, 432*d, 0, 688*d, 944*d, 0.8);
    bus = new BusStop(768+128, 352)
      ;
  }
  void Render()
  {
    if (lv2.isPlaying() == false&& t.levelClear == false)
    {
      lv2.play();
    }
    if (levelInit == false)
    {
      t.p1.spawnX = 64;
      t.p1.spawnY = 64;
      t.p1.xPos = 48;
      t.p1.yPos = 64;


      levelInit = true;
    }
    bus.Render();
    ground.Render();
    doller.Render();
    rat1.Render();
    rat2.Render();
    mad1.Render();
    boxes.Render();
  }
}
