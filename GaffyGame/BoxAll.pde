class BoxAll
{
  Box[] boxes;
  Box b1, b2, b3, b4;
  int level;
  BoxAll(int l)
  {
    level = l;
    //define boxes ahead of time for control

    b1 = new Box (160, 416, 2, 1); //1-1 boxes
    b2 = new Box (80, 432, 1, 2);
    b3 = new Box (128, 432, 1, 3);

    b4 = new Box(578, 360, 4, 4);;
  }
  void LevelInit()
  { //arrayify box for collision
    boxes = new Box[1];
    for (int i = 0; i < boxes.length; i++)
    {
      boxes[i] = new Box(-128, -128, 16, 16);
    }
    if (level == 1)
    {
      boxes = (Box[])  append(boxes, b1); //l1 boxes
      boxes = (Box[])  append(boxes, b2);
      boxes = (Box[])  append(boxes, b3);
      boxes = (Box[])  append(boxes, b4);
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
    for (int i = 1; i < boxes.length; i++)
    {
      boxes[i].boxLogic();
      boxes[i].Render();
    }
  }
}
