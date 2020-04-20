/// @description Insert description here
// You can write your code in this editor
measureLength = objBeat.measure;

if (bouncing) {
  var beatLength = 1.0*60/objBeat.bpm;  
  var trackPosition = 1.0*audio_sound_get_track_position(objBeat.activeSongAudio);  
  var goalPosition = startMove + beatLength;
  var pct = 1 - (goalPosition - trackPosition)/beatLength;
  
  if (pct >= 0.95)
    pct = 1.0;
  if (beats < measureLength) { 
    if (falling) {    
      //Bouncing down
      x = lerp(baseX, baseX + xMovement, pct);
      y = lerp(baseY - maxHeight, baseY, (pct - 0.5) * 2);
      
      if (y >= baseY) {        
        y = baseY;
        falling = false;
        bouncing = false
        x = baseX + xMovement;;
      }
    } else {
      //Bouncing up
      x = lerp(baseX, baseX + xMovement, pct);
      //* 2 because you it only takes half the time
      y = lerp(baseY, baseY - maxHeight, pct * 2);     
      if ((baseY - y) >= maxHeight) {
        y = baseY - maxHeight;
        falling = true;
      }
    }
  } else {
    //Sliding back  
    //Divide by 0.8 to make it pause a split second
    //Subtract the 0.2 to make the pause at the beginning
    x = lerp(baseX, baseX - xMovement, (clamp(pct-0.2,0,1))/0.8);
    if (x <= baseX - xMovement) {
      x = baseX - xMovement;
      bouncing = false;
    }
  
  }
}