class Level3
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;
  Rat rat1, rat2;
  MadRat mad1, mad2;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level3()
  {
    ground = new GroundAll(3);

    doller = new DollerAll(3);

    boxes = new BoxAll(3);
    ground.LevelInit();
    doller.LevelInit();
    boxes.LevelInit();
    rat1 = new Rat(352*d, 224*d, 0, 352*d, 480*d, 0.8);
    rat2 = new Rat(176*d, 256*d, 0, 192*d, 320*d, 1.2);
    mad1 = new MadRat(176*d, 256*d, 0, 192*d, 320*d, 0.8);
    mad2 = new MadRat(608*d, 272*d, 0, 608*d, 720*d, 0.8);
    bus = new BusStop(896, 224);
  }
  void Render()
  {
    if (lv3.isPlaying() == false&& t.levelClear == false)
    {
      lv3.play();
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
    rat2.Render();
    mad1.Render();
    boxes.Render();
  }
}
