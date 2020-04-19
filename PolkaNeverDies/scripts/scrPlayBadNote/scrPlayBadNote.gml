/// @func scrPlayBadNote(action)
/// @desc Plays a blat
/// @param action Which bad note to play (currently useless)

//This is just here in case we decide to have different splats for different instruments
var action = argument0;

//Blat
if (objBeat.playMetronome || objBeat.playSong) {
  audio_play_sound(sndBlat, 100, false);  
}