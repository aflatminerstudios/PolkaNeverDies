/// @description Every Measure
// This is what happens every measure

if (playMetronome) {
  audio_play_sound(sndMeasure, 100, false); 
}

activeMeasure = !activeMeasure;


/// Check recipe list
/// And take first action
if (!activeMeasure) {
  
  if (ds_list_size(objBeatBuffer.commands) == measure) {
    var action = scrCheckRecipes();
    show_debug_message("Starting measure: action = " + action);
  /*  var theList = objBeatBuffer.commands;
    if (action == " " && ds_list_size(theList) > 0) {
      action = theList[| 0];
      ds_list_delete(theList, 0);    
    }*/
    if (action != " ") {
      while (ds_list_size(objBeatBuffer.commands) > 0) {
        ds_list_delete(objBeatBuffer.commands,0); 
      }
      scrTakeAction(action);
    }
  }
}

alarm[0] = room_speed * (60/bpm) * measure; 

