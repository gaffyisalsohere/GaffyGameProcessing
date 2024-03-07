class BoxAll
{
  Box[] boxes;
  Box b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20;
  int level;
  BoxAll(int l)
  {
    level = l;
    //define boxes ahead of time for control

    b1 = new Box (160, 416, 2, 1); //1-1 boxes
    b2 = new Box (80, 432, 1, 2);
    b3 = new Box (128, 432, 1, 3);
    b4 = new Box(592, 360, 4, 4);
    b5 = new Box(160, 240, 2, 5);
    b6 = new Box(448, 400, 1, 6);
    b7 = new Box(656, 352, 1, 7);
    b8 = new Box(864, 256, 1, 8);
    b9 = new Box(96, 416, 1, 9);
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
      boxes = (Box[])  append(boxes, b5);
    }
    if (level == 3)
    {
      boxes = (Box[])  append(boxes, b6);
      boxes = (Box[])  append(boxes, b7);
      boxes = (Box[])  append(boxes, b8);
      boxes = (Box[])  append(boxes, b9);
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
