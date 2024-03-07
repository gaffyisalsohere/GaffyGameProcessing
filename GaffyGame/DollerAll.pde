class DollerAll
{
  Doller[] dollers;
  Doller d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, d33, d34, d35, d36, d37, d38, d39, d40, d41, d42, d43, d44, d45, d46, d47, d48, d49, d50;
  int level;
  DollerAll(int l)
  {
    level = l;
    //define dollers ahead of time for control
    d1 = new Doller(128, 384); //1-1 dollers
    d2 = new Doller(144, 384);
    d3 = new Doller(160, 384);
    d4 = new Doller(112, 384);
    d5 = new Doller(576, 224);
    d6 = new Doller(576, 256);
    d7 = new Doller(608, 224);
    d8 = new Doller(608, 256);
    d9 = new Doller(544, 224);
    d10= new Doller(544, 256);
    d11= new Doller(640, 336);
    d12= new Doller(656, 352);
    d13= new Doller(640, 368);
    d14= new Doller(656, 384);
    d15= new Doller(640, 304);
    d16= new Doller(656, 320);

    d17 = new Doller(112, 128); //1-2 dollers
    d18 = new Doller(128, 128);
    d19 = new Doller(80, 96);
    d20 = new Doller(160, 240);
    d21 = new Doller(64, 96);
    d22 = new Doller(192, 192);
    d23 = new Doller(224, 192);
    d24 = new Doller(256, 192);
    d25 = new Doller(288, 192);
    d26 = new Doller(320, 192);
    d27 = new Doller(544, 224);
    d28 = new Doller(560, 224);
    d29 = new Doller(576, 224);
    d30 = new Doller(592, 224);
    d31 = new Doller(752, 208);
    d32 = new Doller(720, 208);

    d33 = new Doller(448, 352); //1-3 dollers
    d34 = new Doller(448, 336);
    d35 = new Doller(448, 320);
    d36 = new Doller(432, 320);
    d37 = new Doller(464, 320);
    d38 = new Doller(640, 320);
    d39 = new Doller(640, 304);
    d40 = new Doller(640, 288);
    d41 = new Doller(656, 304);
    d42 = new Doller(672, 320);
    d43 = new Doller(672, 304);
    d44 = new Doller(848, 272);
    d45 = new Doller(880, 272);
    d46 = new Doller(864, 256);
    d47 = new Doller(848, 240);
    d48 = new Doller(880, 240);
  }
  void LevelInit()
  { //arrayify doller for convenience
    dollers = new Doller[1];
    for (int i = 0; i < dollers.length; i++)
    {
      dollers[i] = new Doller(-128, -128);
    }
    if (level == 1)
    {
      dollers = (Doller[])  append(dollers, d1);
      dollers = (Doller[])  append(dollers, d2);
      dollers = (Doller[])  append(dollers, d3);
      dollers = (Doller[])  append(dollers, d4);
      dollers = (Doller[])  append(dollers, d5);
      dollers = (Doller[])  append(dollers, d6);
      dollers = (Doller[])  append(dollers, d7);
      dollers = (Doller[])  append(dollers, d8);
      dollers = (Doller[])  append(dollers, d9);
      dollers = (Doller[])  append(dollers, d10);
      dollers = (Doller[])  append(dollers, d11);
      dollers = (Doller[])  append(dollers, d12);
      dollers = (Doller[])  append(dollers, d13);
      dollers = (Doller[])  append(dollers, d14);
      dollers = (Doller[])  append(dollers, d15);
      dollers = (Doller[])  append(dollers, d16);
    }
    if (level == 2)
    {
      dollers = (Doller[])  append(dollers, d17);
      dollers = (Doller[])  append(dollers, d18);
      dollers = (Doller[])  append(dollers, d19);
      dollers = (Doller[])  append(dollers, d20);
      dollers = (Doller[])  append(dollers, d21);
      dollers = (Doller[])  append(dollers, d22);
      dollers = (Doller[])  append(dollers, d23);
      dollers = (Doller[])  append(dollers, d24);
      dollers = (Doller[])  append(dollers, d25);
      dollers = (Doller[])  append(dollers, d26);
      dollers = (Doller[])  append(dollers, d27);
      dollers = (Doller[])  append(dollers, d28);
      dollers = (Doller[])  append(dollers, d29);
      dollers = (Doller[])  append(dollers, d30);
      dollers = (Doller[])  append(dollers, d31);
      dollers = (Doller[])  append(dollers, d32);
    }
    if (level == 3)
    {

      dollers = (Doller[])  append(dollers, d33);
      dollers = (Doller[])  append(dollers, d34);
      dollers = (Doller[])  append(dollers, d35);
      dollers = (Doller[])  append(dollers, d36);
      dollers = (Doller[])  append(dollers, d37);
      dollers = (Doller[])  append(dollers, d38);
      dollers = (Doller[])  append(dollers, d39);
      dollers = (Doller[])  append(dollers, d40);
      dollers = (Doller[])  append(dollers, d41);
      dollers = (Doller[])  append(dollers, d42);
      dollers = (Doller[])  append(dollers, d43);
      dollers = (Doller[])  append(dollers, d44);
      dollers = (Doller[])  append(dollers, d45);
      dollers = (Doller[])  append(dollers, d46);
      dollers = (Doller[])  append(dollers, d47);
      dollers = (Doller[])  append(dollers, d48);
    }
  }
  void Render()
  {
    for (int i = 0; i < dollers.length; i++)
    {
      dollers[i].Render();
    }
  }
}
