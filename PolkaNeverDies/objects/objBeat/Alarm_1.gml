/// @description Every Measure
// This is what happens every measure

if (playMetronome) {
  audio_play_sound(sndMeasure, 100, false); 
}

alarm[1] = room_speed * (60/bpm) * measure; 