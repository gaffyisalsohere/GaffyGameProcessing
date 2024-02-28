class Level1
{
  GroundAll ground;
  Gaffy p1;
  Rat rat1, rat2;
  int d, timestart;

  Level1()
  {
    d = 3;
    p1 = new Gaffy(64, 384, 0, 90, 3);
    ground = new GroundAll(1);
    ground.LevelInit();
    rat1 = new Rat(224*d, 384*d, 0, 192*d, 288*d, 0.8);
    rat2 = new Rat(64*d, 416*d, 0, -64*d, 48*d, 1.2);
  }
  void Render()
  {
    rat1.Render();
    rat2.Render();
    p1.gaffyLogic();
    ground.Render();
    p1.Render();
  }
}
