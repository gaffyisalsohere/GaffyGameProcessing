class Level3
{
  Gaffy p1;
  int d;
  Level3()
  {
    p1 = new Gaffy(128, 384, 0, 90, 3);
  }
  void Render()
  {
    p1.gaffyLogic();
    p1.Render();
  }
}
