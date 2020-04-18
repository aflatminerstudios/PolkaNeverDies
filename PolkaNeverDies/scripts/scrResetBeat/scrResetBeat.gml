///@description scrResetBeat() Resets to beginning of measure

with (objBeat) { 
  alarm[0] = room_speed * (60/bpm);
  alarm[1] = room_speed * (60/bpm); 
  curBeat = 0;
}