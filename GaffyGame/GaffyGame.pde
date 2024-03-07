//GAFFYGAME ALPHA
//
//MENU CONTROLS: W and S move cursor, J selects, K backs out of credits
//GAME CONTROLS: A and D move left and right, J jumps, hold K to hold small boxes and sprint, L hammers.
import processing.sound.*;
//sfx
SoundFile jump;
SoundFile bonk;
SoundFile coin;
SoundFile shatter;
SoundFile slam;
SoundFile hurt;
SoundFile oneup;
SoundFile respawn;
//mus
SoundFile title;
SoundFile lv1;
SoundFile lv2;
SoundFile lv3;
SoundFile gameend;
SoundFile lclear;
TopLogic t;

void setup()
{
  t = new TopLogic();
  t.debug = false;
  t.vernum = "1.24.03.07";
  t.patch = "1.0";
  size(768, 672); //256*224, 3x upscale. my game is heavily influenced by SNES
  frameRate(60);
  noCursor();
  noStroke();
  //sfx define
  jump = new SoundFile(this, "jump.wav");
  bonk = new SoundFile(this, "bonk.wav");
  coin = new SoundFile(this, "coin.wav");
  shatter = new SoundFile(this, "shatter.wav");
  slam = new SoundFile(this, "slam.wav");
  hurt = new SoundFile(this, "hurt.wav");
  oneup = new SoundFile(this, "1up.mp3");
  respawn = new SoundFile(this, "respawn.wav");
  //mus define
  title = new SoundFile(this, "title.mp3");
  lv1 = new SoundFile(this, "l1.mp3");
  lv2 = new SoundFile(this, "l2.mp3");
  lv3 = new SoundFile(this, "l3.mp3");
  lclear = new SoundFile(this, "lclear.mp3");
  gameend = new SoundFile(this, "gameover.mp3");
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
