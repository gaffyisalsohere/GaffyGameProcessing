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
    }
    if (level == 3)
    {
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
