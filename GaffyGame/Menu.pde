class Menu
{
  MenuPointer m1;
  int d;
  int menuSelect, buttonPressed;
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
  }


  void Render()
  {

    m1.Render();
    //menu text
    fill(255);
    textAlign(CENTER, TOP);
    textFont(Menu);
    if (isCredits == false)
    {
      if (isDebug == false)
      {
        text("START GAME", 128*d, 128*d);
      }
      if (isDebug == true)
      {
        text("DEBUG 1-1", 128*d, 128*d);
        text("DEBUG 1-2", 128*d, 144*d);
        text("DEBUG 1-3", 128*d, 160*d);
      }
      text("CREDITS", 128*d, 176*d);
    }
    if (isCredits == true)
    {
      fill(#1765bb);
      rect(24*d, 116*d, 212*d, 80*d, 50);
      fill(255);
      text("GAFFYGAME v1.24.2.28", 128*d, 120*d);
      text("GAME CODE WRITTEN", 128*d, 136*d);
      text("BY COLBY 'GAFFY' HOCKING", 128*d, 152*d);
      text("FONTS ARE PENGO ARCADE", 128*d, 168*d);
      text("AND ASTRON BOY", 128*d, 184*d);
    }
    //Title
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
  int choicerLevel(int levelID)
  {

    if (selection == true && m1.choice == 0)
    {
      return 1;
    }
    if (selection == true && m1.choice == 1)
    {
      return 2;
    }
    if (selection == true && m1.choice == 2)
    {
      return 3;
    }
    return 0;
  }
  boolean choicerGM(boolean gamemode)
  {
    
    if (selection == true && m1.choice <= 3)
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
