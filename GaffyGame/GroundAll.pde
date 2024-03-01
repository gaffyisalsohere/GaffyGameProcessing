class GroundAll
{
  Ground[] grounds;
  Ground g1, g2, g3, g4;
  int level;
  GroundAll(int l)
  {
    level = l;
    //define grounds ahead of time for control
    g1 = new Ground(64, 448, 128, 64); //1-1 grounds

    g2 = new Ground(192, 384, 128, 128);

    g3 = new Ground(-48, 416, 128, 192);

    g4 = new Ground(384, 384, 896, 32);
  }
  void LevelInit()
  { //arrayify ground for collision
    grounds = new Ground[1];
    for (int i = 0; i < grounds.length; i++)
    {
      grounds[i] = new Ground(-128, -128, 16, 16);
    }
    if (level == 1)
    {
      grounds = (Ground[])  append(grounds, g1);
      grounds = (Ground[])  append(grounds, g2);
      grounds = (Ground[])  append(grounds, g3);
      grounds = (Ground[])  append(grounds, g4);
    }
    if (level == 2)
    {
    }
    if (level == 3)
    {
    }
  }
  void Render()
  {
    for (int i = 0; i < grounds.length; i++)
    {
      grounds[i].Render();
    }
  }
}
