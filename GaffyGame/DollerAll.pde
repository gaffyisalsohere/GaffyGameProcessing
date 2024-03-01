class DollerAll
{
  Doller[] dollers;
  Doller d1, d2, d3, d4;
  int level;
  DollerAll(int l)
  {
    level = l;
    //define dollers ahead of time for control
    d1 = new Doller(64, 384); //1-1 dollers

    d2 = new Doller(80, 384);

    d3 = new Doller(96, 384);

    d4 = new Doller(112, 384);
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
    for (int i = 0; i < dollers.length; i++)
    {
      dollers[i].Render();
    }
  }
}
