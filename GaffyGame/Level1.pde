class Level1
{
  GroundAll ground;
  Gaffy p1;
  int d, timestart;
  
  Level1()
  {
    p1 = new Gaffy(128, 384, 0, 90, 3);
    ground = new GroundAll(1);
    ground.LevelInit();
  }
  void Render()
  {


    p1.gaffyLogic();
    ground.Render();
    p1.Render();
  }
}
