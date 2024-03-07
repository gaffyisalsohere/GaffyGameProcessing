class Level3
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;

  MadRat mad1, mad2, mad3, mad4, mad5;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level3()
  {
    d = 3;
    ground = new GroundAll(3);
    doller = new DollerAll(3);
    boxes = new BoxAll(3);
    ground.LevelInit();
    doller.LevelInit();
    boxes.LevelInit();
    mad1 = new MadRat(224*d, 416*d, 0, 192*d, 288*d, 1.5);
    mad2 = new MadRat(64*d, 384*d, 0, -64*d, 48*d, 1.5);
    mad3 = new MadRat(400*d, 400*d, 0, 400*d, 528*d, 1.5);
    mad4 = new MadRat(608*d, 352*d, 0, 608*d, 736*d, 1.5);
    mad5 = new MadRat(816*d, 304*d, 0, 816*d, 944*d, 1.5);
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
      t.p1.spawnX = 128;
      t.p1.spawnY = 416;
      t.p1.xPos = 128;
      t.p1.yPos = 416;
      t.levelClear = false;
      t.tallyDone = false;
      t.clearTimer = 180;
      levelInit = true;
    }

    bus.Render();
    ground.Render();
    doller.Render();
    mad1.Render();
    mad2.Render();
    mad3.Render();
    mad4.Render();
    mad5.Render();


    boxes.Render();
  }
}
