/// @description Every Measure
// This is what happens every measure

//Play metronome beat
if (playMetronome) {
  audio_play_sound(sndMeasure, 100, false); 
}

curMeasure += 1;
totalMeasure += 1

//Make active/inactive
activeMeasure = !activeMeasure;


/// Check recipe list
/// And take first action
if (!activeMeasure) {
  
  if (ds_list_size(objBeatBuffer.commands) == measure) {
    var action = scrCheckRecipes();
    
    //action will be " " if no match
    if (action != " ") {
      ///Empty command queue
      while (ds_list_size(objBeatBuffer.commands) > 0) {
        ds_list_delete(objBeatBuffer.commands,0); 
      }
      scrTakeAction(action);
    }
  }
}

//alarm[0] = room_speed * (60/bpm) * measure; 

