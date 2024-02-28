class MenuPointer
{
  int choice;
  boolean credits;
  int d;
  MenuPointer(int c)
  {
    choice = c;
    d=3;
  }
  void Render()
  {
    noStroke(); //draw the ground
    fill(#c19571);
    if (credits == false)
    {
      triangle(64*d, (128*d+(16*d*choice)), 64*d, (136*d+(16*d*choice)), 72*d, (132*d+(16*d*choice)));
    }
  }
}
