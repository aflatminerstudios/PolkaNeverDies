/// @description Insert description here
// You can write your code in this editor

if (displayDebug) {

  draw_text(50, 50, "Buffer size: " + string(objInputControl.bufferSize));
  draw_text(50, 100, "Post size: " + string(objInputControl.postCheckMax));
  
  if (objInputControl.badInput) {
    draw_sprite(sprTestBand, 0, room_width - 100, 25);
  }
  
  if (objInputControl.hasInput) {
    draw_sprite(sprTestHorde, 0, room_width - 100, 125);
  }
  
  
  if (objBeat.activeMeasure) {
    draw_text(room_width/2, 75, "Go!");
  } else {
    draw_text(room_width/2, 75, "Stop!");
  }
  
}