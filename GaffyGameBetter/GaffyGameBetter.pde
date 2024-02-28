//GAFFYGAME V1.24.2.28
//NOW REWRITTEN FROM SCRATCH TO BE LESS BAD
//MENU CONTROLS: W and S move cursor, J selects, K backs out of credits
//GAME CONTROLS: A and D move left and right, J jumps, hold K to hold small boxes, L hammers.
void setup()
{
  //for reference: "d" effects the "grid" objects are put on; all object coordinate and scale grids are divisible by d by design, except when to patch up AA jank.
  //"d" takes this meaning on all subsequent pages, by the way.


  size(768, 672); //256*224, 3x upscale. my game is heavily influenced by SNES
  frameRate(60);
  noCursor();
}
void draw()
{
}
void keyPressed()
{
  //p1.keyStart(key);
  //menu.keyStart(key);
}


void keyReleased()
{
  //p1.keyStop(key);
  //menu.keyStop(key);
}
