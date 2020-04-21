/// @func scrGameOver(isWin)
/// @param isWin Did they win

var isWin = argument0;

if (isWin) {
  with (objDataTransfer) {
    won = true;
    numSurvivors = instance_number(objBand);
    points += objBeat.winningPoints;
    
    var i = 0;
    for (i = 0; i < instance_number(objBand); ++i) {
      objDataTransfer.livingMembers[i] = instance_find(objBand, i).sprite_index;
    
    }
    objDataTransfer.livingMembers[i] = noone;
    
  }  
} else {
  with (objDataTransfer) {
    won = false;
    numSurvivors = 0;
    livingMembers[0] = noone;
  }
}

with (objDebugControls) {
  instance_destroy();  
}

room_goto(roomGameOver);