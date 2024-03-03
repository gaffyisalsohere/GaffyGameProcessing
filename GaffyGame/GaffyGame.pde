//GAFFYGAME ALPHA
//
//MENU CONTROLS: W and S move cursor, J selects, K backs out of credits
//GAME CONTROLS: A and D move left and right, J jumps, hold K to hold small boxes, L hammers.
import processing.sound.*;
//sfx
SoundFile jump;
//mus
SoundFile title;
TopLogic t;

void setup()
{
  //for reference: "d" effects the "grid" objects are put on; all object coordinate and scale grids are divisible by d by design, except when to patch up AA jank.
  //"d" takes this meaning on all subsequent pages, by the way.
  t = new TopLogic();
  size(768, 672); //256*224, 3x upscale. my game is heavily influenced by SNES
  frameRate(60);
  noCursor();
  noStroke();
  jump = new SoundFile(this, "jump.wav");
  title = new SoundFile(this, "title.mp3");
  t.vernum = "1.24.03.02";
}


void keyPressed()
{
  t.p1.keyStart(key);
  t.menu.keyStart(key);
}


void keyReleased()
{
  t.p1.keyStop(key);
  t.menu.keyStop(key);
}
void draw()
{
  t.GameLoop();
}
