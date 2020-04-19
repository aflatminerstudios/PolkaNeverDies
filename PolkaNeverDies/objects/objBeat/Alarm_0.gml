/// @description Every Measure
// This is what happens every measure

if (playMetronome) {
  audio_play_sound(sndMeasure, 100, false); 
}

curMeasure += 1;

activeMeasure = !activeMeasure;

//Temporary win/lose conditions
if (curMeasure >= gameLength && instance_number(objBand) > 0) {
  show_message("You made it " + string(gameLength) + " measures! You won!");
  room_restart();
}

if (instance_number(objBand) <= 0) {
  show_message("You lost! You suck!");
  room_restart();  
}


/// Check recipe list
/// And take first action
if (!activeMeasure) {
  //show_debug_message("Starting measure: " + string(ds_list_size(objBeatBuffer.commands)));
  if (ds_list_size(objBeatBuffer.commands) == measure) {
    var action = scrCheckRecipes();
    show_debug_message("Got action: action = " + action);
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

