/// @description Every Beat
// This is what happens every beat




if (curBeat != 0) {
  if (playMetronome) {
    audio_play_sound(sndBeat, 100, false); 
  }
} else if (playSong && !audio_is_playing(song))
  audio_play_sound(song, 100, false);

show_debug_message(curBeat);

curBeat += 1;
curBeat %= measure;
totalBeat += 1;


alarm[0] = room_speed * (60/bpm);  

scrBeatHandleInput();

