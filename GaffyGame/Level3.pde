class Level3
{
  GroundAll ground;
  DollerAll doller;
  BoxAll boxes;
  Rat rat1, rat2;
  MadRat mad1;
  BusStop bus;
  int d, timestart;
  boolean levelInit, clear;

  Level3()
  {
    ground = new GroundAll(3);

    doller = new DollerAll(3);

    boxes = new BoxAll(3);
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
