class TopLogic
{
  Cloud[] manyClouds;
  HUD hud;
  Menu menu;
  int levelID, d;
  boolean gamemode;
  TopLogic()
  { //define objects in TopLogic's Domain.
    d = 3;
    manyClouds = new Cloud[6];
    for (int i = 0; i<manyClouds.length; i+=1)
    { //array-ified clouds, now with random scrolling and speeds
      manyClouds[i] = new Cloud((96+(8*i)+(random(-16, 16)*16)*d), ((56+((8*i)+(random(0, 8))))*d), (random(-0.8, 0.8)));
    }
    hud = new HUD();
    menu = new Menu();
    menu.isDebug=true; //debug flag! set to true for debug mode (a full level select)
  }
  void GameLoop()
  {
    //Common Rendering: BG
    background(24, 2, 44);
    fill(#ffde66);
    circle (32*d, 64*d, 48*d);
    fill(24, 2, 44);
    circle(48*d, 64*d, 48*d);
    for (int i = 0; i<manyClouds.length; i+=1)
    {
      manyClouds[i].Render();
    }

    //Level and Gamemode Logic
    if (gamemode == false)
    {
      menu.keyHandler();
      menu.Render();
    }
    if (gamemode == true)
    {
      //Common Rendering: HUD
      hud.Render();
    }
  }
}
