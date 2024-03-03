class Menu
{
  Ground g1;
  MenuPointer m1;
  int d;
  int menuSelect, buttonPressed, levelID;
  boolean selection, back;
  boolean isDebug, isCredits;
  boolean keyw, keya, keys, keyd, keyj, keyk, keyl;
  PFont Menu;
  PFont Title;
  Menu()
  {
    d=3;
    Menu = createFont("menu.ttf", 24);
    Title = createFont("title.otf", 128);
    m1 = new MenuPointer(0);
    g1 = new Ground(0, 192, 256, 32);
  }
  void Render()
  {
    if (title.isPlaying() == false)
    {
      title.play();
    }
    g1.Render();

    m1.Render();
    //menu text
    fill(255);
    textAlign(LEFT, TOP);
    textFont(Menu);
    if (isCredits == false)
    {
      text("PRESS J TO SELECT", 64*d, 112*d);
      if (isDebug == false)
      {
        text("START GAME", 80*d, 128*d);
      }
      if (isDebug == true)
      {
        text("DEBUG 1-1", 80*d, 128*d);
        text("DEBUG 1-2", 80*d, 144*d);
        text("DEBUG 1-3", 80*d, 160*d);
      }
      text("CREDITS", 80*d, 176*d);
    }
    if (isCredits == true)
    {
      fill(#1765bb);
      rect(24*d, 24*d, 212*d, 188*d, 50);
      fill(255);
      textAlign(LEFT, TOP);
      if (isDebug == true);
      {
        text("GAFFYGAME v" + t.vernum, 32*d, 32*d);
      }
      if (isDebug == false);
      {
        text("GAFFYGAME ALPHA VERSION", 32*d, 32*d);
      }
      text("GAME CODE WRITTEN", 32*d, 48*d);
      text("BY COLBY 'GAFFY' HOCKING", 32*d, 64*d);
      text("FONTS ARE PENGO ARCADE", 32*d, 80*d);
      text("AND ASTRON BOY", 32*d, 96*d);
      text("TEMP AUDIO C. NINTENDO", 32*d, 112*d);
      text("SPECIAL THANKS TO OZ", 32*d, 128*d);

      text("FOR HELP GETTING TO", 32*d, 144*d);

      text("1.x.x.x BUILD", 32*d, 160*d);
      text("PRESS K TO RETURN", 32*d, 192*d);
    }
    //Title
    if (isCredits == false)
    {
      textAlign(CENTER, TOP);
      fill(#0c3460);
      rect(32*d, 24*d, 192*d, 80*d, 50);
      fill(255);
      fill(#1765bb);
      textFont(Title);
      text("GAFFY", 124*d, 32*d);
      text("THE FOX", 124*d, 64*d);

      textFont(Menu);
      fill(255);
      text("C 2024-202x GAFFY", 128*d, 216*d);
    }
  }
  void keyHandler()
  {
    buttonPressed --; //menu controls: w and s go up and down, j selects, k backs out of credits
    if (buttonPressed < 0)
    {
      buttonPressed = 0;
    }

    if (buttonPressed == 0)
    {
      if (keyw == true)
      {
        m1.choice -=1;
        buttonPressed = 10;
      }
      if (keys == true)
      {
        m1.choice +=1;
        buttonPressed = 10;
      }
    }
    if (keyw == false)
    {
    }
    if (keys == false)
    {
    }
    if (keyj == true)
    {
      selection = true;
    }
    if (keyj == false)
    {
      selection = false;
    }
    if (keyk == true)
    {
      back = true;
    }
    if (keyk == false)
    {
      back = false;
    }
    if (m1.choice < 0) //bounds for menu options
    {
      m1.choice = 0;
    }
    if (m1.choice > 3)
    {
      m1.choice = 3;
    }
    if (isDebug == false) //if not debug mode, skip the debug options
    {
      if (m1.choice == 1)
      {
        m1.choice = 3;
      }
      if (m1.choice == 2)
      {
        m1.choice = 0;
      }
    }
  }
  void choicerCredits()
  {

    if (selection == true && m1.choice == 3)
    {
      isCredits = true;
      m1.credits = true;
    }
    if (back == true && isCredits == true)
    {
      isCredits = false;
      m1.credits = false;
    }
  }
  void choicerLevel()
  {

    if (selection == true && m1.choice == 0)
    {
      t.levelID = 1;

    }
    if (selection == true && m1.choice == 1)
    {
      t.levelID = 2;

    }
    if (selection == true && m1.choice == 2)
    {
      t.levelID = 3;

    }

  }
  boolean choicerGM(boolean gamemode)
  {

    if (selection == true && m1.choice < 3)
    {
      return true;
    }

    return false;
  }
  void keyStart(char k)
  {
    if (keyPressed == true)
    {
      if (k == 'w')
      {
        keyw = true;
      }
      if (k == 's')
      {
        keys = true;
      }
      if (k == 'j')
      {
        keyj = true;
      }
      if (k == 'k')
      {
        keyk = true;
      }
    }
  }
  void keyStop(char k)
  {
    if (keyw == true && k == 'w')
    {
      keyw = false;
    }
    if (keys == true && k == 's')
    {
      keys = false;
    }
    if (keyj == true && k == 'j')
    {
      keyj = false;
    }
    if (keyk == true && k == 'k')
    {
      keyk = false;
    }
  }
}
