/// @description Every Beat
// This is what happens every beat


curBeat += 1;
curBeat %= measure;
totalBeat += 1;

//Get points because you're still surviving
objDataTransfer.points += pointsPerBeat * instance_number(objBand);

//Play metronome beat
if (curBeat != 0) {
  if (playMetronome) {
    audio_play_sound(sndBeat, 100, false); 
  }
}

show_debug_message(string(curBeat) + " " + string(activeMeasure));


if (activeMeasure) {
  // Get input if active measure
  scrBeatHandleInput();
} else if (ds_list_size(objBeatBuffer.commands) > 0){
  //If inactive measure, process a single command and then remove it
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


//Stop ducking and move to safety
with (objBand) {
  if (ducking) {
    ducking = false; 
    sprite_index = idleSprite;
    while (place_meeting(x, y, objDuckable)) {
      x += 1; 
    }
    x += 2;    
    sprite_index = duckSprite;
  }  
}