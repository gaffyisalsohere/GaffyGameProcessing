class GroundAll
{
  Ground[] grounds;
  Ground g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16;
  int level;
  GroundAll(int l)
  {
    level = l;
    //define grounds ahead of time for control
    g1 = new Ground(64, 448, 128, 64); //1-1 grounds
    g2 = new Ground(192, 384, 128, 128);
    g3 = new Ground(-48, 416, 128, 192);
    g4 = new Ground(368, 384, 32, 128);
    g5 = new Ground(400, 336, 64, 144);
    g6 = new Ground(416, 304, 144, 128);
    g7 = new Ground(672, 192, 128, 192);
    g8 = new Ground(656, 384, 16, 64);
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
      grounds = (Ground[])  append(grounds, g5);
      grounds = (Ground[])  append(grounds, g6);
      grounds = (Ground[])  append(grounds, g7);
      grounds = (Ground[])  append(grounds, g8);
      //grounds = (Ground[])  append(grounds, g9);
      //grounds = (Ground[])  append(grounds, g10);
      //grounds = (Ground[])  append(grounds, g11);
      //grounds = (Ground[])  append(grounds, g12);
      //grounds = (Ground[])  append(grounds, g13);
      //grounds = (Ground[])  append(grounds, g14);
      //grounds = (Ground[])  append(grounds, g15);
      //grounds = (Ground[])  append(grounds, g16);
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
