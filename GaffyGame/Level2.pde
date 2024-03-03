class Level2
{
  GroundAll ground;
  DollerAll doller;

  BoxAll boxes;
  int d;
  Level2()
  {

    ground = new GroundAll(1);
    ground.LevelInit();
    doller = new DollerAll(1);
    doller.LevelInit();
    boxes = new BoxAll(1);
    boxes.LevelInit();
  }
  void Render()
  {
    if (lv2.isPlaying() == false&& t.levelClear == false)
    {
      lv2.play();
    }
  }
}
