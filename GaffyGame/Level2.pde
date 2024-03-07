class Level2
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;
  Rat rat1, rat2;
  MadRat mad1, mad2;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level2()
  {
    d = 3;

    ground = new GroundAll(2);
    doller = new DollerAll(2);
    boxes = new BoxAll(2);
    ground.LevelInit();
    doller.LevelInit();
    boxes.LevelInit();
    rat1 = new Rat(224*d, 384*d, 0, 192*d, 288*d, 0.8);
    rat2 = new Rat(176*d, 256*d, 0, 192*d, 320*d, 1.2);
    mad1 = new MadRat(176*d, 256*d, 0, 192*d, 320*d, 0.8);
    mad2 = new MadRat(512*d, 272*d, 0, 496*d, 576*d, 0.8);
    bus = new BusStop(768+128, 352);
    //    g17 = new Ground(480, 272, 112, 256);
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
    mad2.Render();
    boxes.Render();
  }
}
