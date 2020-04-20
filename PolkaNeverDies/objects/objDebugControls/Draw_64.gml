/// @description Insert description here
// You can write your code in this editor

if (displayDebug) {

  draw_text(50, 550, "Buffer size (1/2): " + string(objInputControl.bufferSize));
  draw_text(50, 600, "Post size (q/w): " + string(objInputControl.postCheckMax));
  draw_text(50, 650, "Horde Move (g/h): " + string(objHorde.moveSpeed));
  
/*
  if (objInputControl.badInput) {
    draw_sprite(sprTestBand, 0, 800, 25);
  }
  
  if (objInputControl.hasInput) {
    draw_sprite(sprTestHorde, 0, 800, 125);
  }
  */
  
  if (objBeat.activeMeasure) {
    draw_text(500, 75, "Go!");
  } else {
    draw_text(500, 75, "Stop!");
  }
  
  if (instance_number(curObj) > 0) {
    draw_text(600, 100, "Change character (9/0)");
    draw_text(600, 150, string(charList[curChar]) + " mvSpd (u/i): " + string(curObj.forwardSpeed));
    draw_text(600, 200, string(charList[curChar]) + " mvDist (o/p): " + string(curObj.forwardSteps));
  }
  
  
  var theList = objBeatBuffer.commands;
  for (var i = 0; i < ds_list_size(theList); ++i) {
    draw_text(250, 50 + i * 50, theList[| i] + " ");
  }
  
  
}