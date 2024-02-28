class Level1
{
  GroundAll ground;

  Rat rat1, rat2;
  Box b1, b2, b3;
  int d, timestart;
  boolean levelInit;

  Level1()
  {
    d = 3;

    ground = new GroundAll(1);
    ground.LevelInit();
    rat1 = new Rat(224*d, 384*d, 0, 192*d, 288*d, 0.8);
    rat2 = new Rat(64*d, 416*d, 0, -64*d, 48*d, 1.2);
    b1 = new Box (160, 416, 2, 1);
    b2 = new Box (80, 432, 1, 2);
    b3 = new Box (128, 432, 1, 3);
  }
  void Render()
  {
    if (levelInit == false)
    {
    t.p1.xPos = 48;
    t.p1.yPos = 416;
    levelInit = true;
    }
    rat1.Render();
    rat2.Render();
    //p1.gaffyLogic();
    ground.Render();
    b1.boxLogic();
    b2.boxLogic();
    b3.boxLogic();
    b1.Render();
    b2.Render();
    b3.Render();
    //p1.Render();
  }
}
