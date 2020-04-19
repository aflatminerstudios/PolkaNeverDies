/// @description Every Beat
// This is what happens every beat


curBeat += 1;
curBeat %= measure;
totalBeat += 1;

objDataTransfer.points += pointsPerBeat * instance_number(objBand);


if (curBeat != 0) {
  if (playMetronome) {
    audio_play_sound(sndBeat, 100, false); 
  }
}

show_debug_message(string(curBeat) + " " + string(activeMeasure)); //string(ds_list_size(objBeatBuffer.commands)));

/*if (activeMeasure) {
  show_debug_message("Active");
} else {
  show_debug_message("Inactive");
}
*/

/*
// Moved to top of event
curBeat += 1;
curBeat %= measure;
totalBeat += 1;
*/

//alarm[1] = room_speed * (60/bpm);  

if (activeMeasure) {
  scrBeatHandleInput();
} else if (ds_list_size(objBeatBuffer.commands) > 0){
  var theList = objBeatBuffer.commands;
  var action = " ";
  if (ds_list_size(theList) > 0) {
    action = theList[| 0];
    ds_list_delete(theList, 0);    
  }
  if (action != " ") {
    scrTakeAction(action);  
  }
}

with (objHeart) {
  scrBeatHeart(self.id);
}
