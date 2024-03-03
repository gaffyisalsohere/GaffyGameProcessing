//Hitbox hitbox;
class MadRat
{
  Hitbox hitbox;
  boolean safe, sound;
  float xPos, yPos, lTarget, rTarget, PawHeightA, PawHeightB, speed, yVelocity;
  int stepTimer, d, rotate;
  int dir; //0 and 1 = left and right, respectively. Bool'ing it broke, oh well
  MadRat(float x, float y, int f, float l, float r, float s)
  {

    xPos = x;
    yPos = y;
    dir = f;
    speed = s;
    lTarget = l;
    rTarget = r;
    stepTimer=30;
    PawHeightA=0;
    PawHeightB=1.5;
    hitbox = new Hitbox((xPos/d)-2, (yPos/d)-16, 28, 16);
    yVelocity = -5;
    safe = false;
  }
  void Render()
  {

    hitbox.xPos = (xPos/d)-2;
    hitbox.yPos = (yPos/d)-16;
    hitbox.safe = safe;

    if (speed > 1.5) //sanity check; dont fast the rat
    {
      speed = 1.5;
    }
    if (speed < 0.5) //sanity check; dont make immobile rats
    {
      speed = 0.5;
    }

    stepTimer--;
    if (stepTimer>=15)
    {
      PawHeightA+=0.1;
      PawHeightB-=0.1;
    }
    if (stepTimer<15)
    {
      PawHeightA-=0.1;
      PawHeightB+=0.1;
    }
    if (stepTimer==0)
    {
      stepTimer=30;
    }
    d = 3;
    if (dir==0)//0 = left
    { //DRAW A RAT facing left if it's facing left.
      fill(#000000); //from-camera paws
      arc(xPos+(4*d), yPos-(PawHeightA*d)+1, (8*d), (6*d), PI, TWO_PI);
      arc(xPos+(17*d), yPos-(PawHeightB*d)+1, (8*d), (6*d), PI, TWO_PI);
      fill(#e0743e);
      triangle(xPos+(22*d), yPos-(6*d), xPos+(18*d), yPos-(6*d), xPos+(24*d), yPos-(16*d));//tail
      fill(#143d52);
      ellipse(xPos+(2*d), yPos-(12*d), 7*d, 8*d);// back ear
      fill(#257298);
      ellipse(xPos+(11*d), yPos-(6*d), 22*d, 11*d);//body
      ellipse(xPos+(2*d), yPos-(8*d), 11*d, 9*d);//head A
      fill(#e6e600);
      ellipse(xPos, yPos-28, 1*d, 2*d);//eyes
      ellipse(xPos-(2*d), yPos-28, 1*d, 2*d);
      fill(#257298);
      ellipse(xPos-(2*d), yPos-(6*d), 16*d, 5*d);//head B
      ellipse(xPos+(4*d), yPos-(12*d), 7*d, 8*d);//front ear A
      fill(#e0743e);
      ellipse(xPos+(4*d), yPos-(12*d), 5*d, 6*d);//front ear B
      circle(xPos-(9*d), yPos-(7*d), 2*d);//nose
      fill(#143d52); //towards-camera paws
      arc(xPos+(6*d), yPos-(PawHeightB*d)+1, (8*d), (6*d), PI, TWO_PI);
      arc(xPos+(19*d), yPos-(PawHeightA*d)+1, (8*d), (6*d), PI, TWO_PI);
      //MOVING THE RAT
      if (xPos > lTarget);
      {//if right of target go left
        xPos -= speed*d;
      }
      if (xPos <= lTarget)
      {//if at or beyond target turn around
        dir = 1;
        xPos += 2*d;
      }
    }
    if (dir==1)//1 = right
    {
      //DRAW A RAT facing right if it's facing right.
      fill(#000000); //from-camera paws
      arc(xPos+(20*d), yPos-(PawHeightA*d)+1, (8*d), (6*d), PI, TWO_PI);
      arc(xPos+(7*d), yPos-(PawHeightB*d)+1, (8*d), (6*d), PI, TWO_PI);
      fill(#e0743e);
      triangle(xPos+(2*d), yPos-(6*d), xPos+(6*d), yPos-(6*d), xPos+(0*d), yPos-(16*d));//tail
      fill(#143d52);
      ellipse(xPos+(22*d), yPos-(12*d), 7*d, 8*d);// back ear
      fill(#257298);
      ellipse(xPos+(13*d), yPos-(6*d), 22*d, 11*d);//body
      ellipse(xPos+(22*d), yPos-(8*d), 11*d, 9*d);//head A
      fill(#e6e600);
      ellipse(xPos+(24*d), yPos-28, 1*d, 2*d);//eyes
      ellipse(xPos+(26*d), yPos-28, 1*d, 2*d);
      fill(#257298);
      ellipse(xPos+(26*d), yPos-(6*d), 16*d, 5*d);//head B
      ellipse(xPos+(20*d), yPos-(12*d), 7*d, 8*d);//front ear A
      fill(#e0743e);
      ellipse(xPos+(20*d), yPos-(12*d), 5*d, 6*d);//front ear B
      circle(xPos+(33*d), yPos-(7*d), 2*d);//nose
      fill(#143d52); //towards-camera paws
      arc(xPos+(18*d), yPos-(PawHeightB*d)+1, (8*d), (6*d), PI, TWO_PI);
      arc(xPos+(5*d), yPos-(PawHeightA*d)+1, (8*d), (6*d), PI, TWO_PI);
      //MOVING THE RAT
      {
        if (xPos < rTarget);
        {//if left of target go right
          xPos += speed*d;
        }
        if (xPos >= rTarget)
        {//if at or beyond target turn around
          dir = 0;
          xPos -= speed*d;
        }
      }
    }
    if (hitbox.dead == false)
    {
      hitbox.Collide();
    }
    if (hitbox.dead == true|| t.levelClear == true)
    {
      if (sound == false)
      {
        bonk.play();
        sound = true;
      }
      yVelocity += 0.3;
      yPos = yPos + yVelocity;
    }
  }
}
