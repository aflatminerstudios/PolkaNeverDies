/// @description Insert description here
// You can write your code in this editor

if (displayDebug) {

  draw_text(50, 50, "Buffer size: " + string(objInputControl.bufferSize));
  draw_text(50, 100, "Post size: " + string(objInputControl.postCheckMax));
  draw_text(50, 150, "Horde Move: " + string(objHorde.moveSpeed));
  
  
  if (objInputControl.badInput) {
    draw_sprite(sprTestBand, 0, 800, 25);
  }
  
  if (objInputControl.hasInput) {
    draw_sprite(sprTestHorde, 0, 800, 125);
  }
  
  
  if (objBeat.activeMeasure) {
    draw_text(500, 75, "Go!");
  } else {
    draw_text(500, 75, "Stop!");
  }
  
  if (instance_number(curObj) > 0) {
    draw_text(500, 150, string(charList[curChar]) + " mvSpd: " + string(curObj.forwardSpeed));
    draw_text(500, 200, string(charList[curChar]) + " mvDist: " + string(curObj.forwardSteps));
  }
  
  var theList = objBeatBuffer.commands;
  for (var i = 0; i < ds_list_size(theList); ++i) {
    draw_text(200, 50 + i * 50, theList[| i] + " ");
  }
  
  
}