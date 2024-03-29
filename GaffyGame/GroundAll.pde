class GroundAll
{
  Ground[] grounds;
  Ground g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, g27, g28, g29, g30;
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
    g6 = new Ground(464, 304, 144, 256);
    g7 = new Ground(688, 192, 128, 192);
    g8 = new Ground(608, 384, 16, 64);
    g9 = new Ground(608, 304, 16, 192);
    g10 = new Ground(624, 448, 64, 32);
    g11 = new Ground(688, 432, 384, 64);

    g12 = new Ground(0, 96, 64, 384);//1-2 grounds
    g13 = new Ground(64, 144, 32, 384);
    g14 = new Ground(96, 176, 64, 320);
    g15 = new Ground(160, 256, 192, 256);
    g16 = new Ground(352, 224, 128, 320);
    g17 = new Ground(480, 272, 64, 256);
    g18 = new Ground(608, 272, 112, 256);
    g19 = new Ground(768, 256, 384, 256);

    g20 = new Ground(64, 448, 128, 64); //1-3 grounds
    g21 = new Ground(192, 416, 128, 128);
    g22 = new Ground(-48, 384, 128, 192);
    g23 = new Ground(400, 400, 128, 128);
    g24 = new Ground(608, 352, 128, 256);
    g25 = new Ground(816, 304, 384, 256);
    //g26 = new Ground(-48, 416, 128, 192);
    //g27 = new Ground(192, 384, 128, 128);
    //g28 = new Ground(-48, 416, 128, 192);
    //g29 = new Ground(192, 384, 128, 128);
    //g30 = new Ground(-48, 416, 128, 192);
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
      grounds = (Ground[])  append(grounds, g9);
      grounds = (Ground[])  append(grounds, g10);
      grounds = (Ground[])  append(grounds, g11);
    }
    if (level == 2)
    {
      grounds = (Ground[])  append(grounds, g12);
      grounds = (Ground[])  append(grounds, g13);
      grounds = (Ground[])  append(grounds, g14);
      grounds = (Ground[])  append(grounds, g15);
      grounds = (Ground[])  append(grounds, g16);
      grounds = (Ground[])  append(grounds, g17);
      grounds = (Ground[])  append(grounds, g18);
      grounds = (Ground[])  append(grounds, g19);
    }
    if (level == 3)
    {
      grounds = (Ground[])  append(grounds, g20);
      grounds = (Ground[])  append(grounds, g21);
      grounds = (Ground[])  append(grounds, g22);
      grounds = (Ground[])  append(grounds, g23);
      grounds = (Ground[])  append(grounds, g24);
      grounds = (Ground[])  append(grounds, g25);
      //grounds = (Ground[])  append(grounds, g26);
      //grounds = (Ground[])  append(grounds, g27);
      //grounds = (Ground[])  append(grounds, g28);
      //grounds = (Ground[])  append(grounds, g29);
      //grounds = (Ground[])  append(grounds, g30);
    }
  }
  void Render()
  {
    for (int i = 1; i < grounds.length; i++)
    {
      grounds[i].Render();
    }
  }
}
