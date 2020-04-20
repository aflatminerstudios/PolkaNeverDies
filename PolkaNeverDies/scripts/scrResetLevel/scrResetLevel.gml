/// @func scrResetLevel(level)
/// @desc resets the level
/// @param level which level to run

var level = argument0;

//for gameover
with (objDataTransfer) {
  won = false;
  points = 0;
  numSurvivors = 0;
  
  livingMembers[0] = noone;
}


curLevel = level;
objBeat.song =  song[curLevel];
objBeat.bpm = bpm[curLevel];
objBeat.measure = measure[curLevel];
objBeat.measuresInSong = measuresInSong[curLevel];

