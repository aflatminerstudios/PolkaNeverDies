/// @func scrGameOver(isWin)
/// @param isWin Did they win

var isWin = argument0;

if (isWin) {
  with (objDataTransfer) {
    won = true;
    numSurvivors = instance_number(objBand);;
  }
} else {
  with (objDataTransfer) {
    won = false;
    numSurvivors = 0;
  }
}

with (objDebugControls) {
  instance_destroy();  
}

room_goto(roomGameOver);