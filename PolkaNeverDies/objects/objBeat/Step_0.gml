/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(song)) {
  activeSongAudio = audio_play_sound(song, 100, false);
}



activeSongTargetGain = playSong ? 1.0 : 0.0;

//TODO: Reset this
//audio_sound_gain(activeSongAudio, 0.0, 0.00);

if(audio_is_playing(activeSongAudio) && activeSongGain != activeSongTargetGain) {  
	audio_sound_gain(activeSongAudio, activeSongTargetGain, 0.05);
	activeSongGain = activeSongTargetGain;
}




var beatLength = 1.0*60/bpm;
var measureLength = measure*beatLength
var loopLength = measuresInSong*measureLength;
var introLength = measuresInIntro*measureLength;

var trackPosition = 1.0*audio_sound_get_track_position(activeSongAudio);
//show_debug_message("   ===Micha=== TrackPosition/LoopLength: " + string(trackPosition) + "/" + string(loopLength));

if(trackPosition >= loopLength + introLength) {
	var newTrackPosition = trackPosition - loopLength
	audio_sound_set_track_position(activeSongAudio, newTrackPosition);
	show_debug_message("   ===Micha===   Rewound track one loop to: " + string(newTrackPosition));

	// Reset everything
	trackPosition = newTrackPosition;
	curMeasure = -1;
	curBeat = -1;
}


var audioMeasure = floor(trackPosition/measureLength);
//show_debug_message("   ===Micha=== audioMeasure, curMeasure: " + string(audioMeasure) + ", " + string(curMeasure))
if(audioMeasure != curMeasure)
	event_user(0);


var audioBeat = floor(trackPosition/beatLength) - audioMeasure*measure;
//show_debug_message("   ===Micha=== audioBeat, curBeat: " + string(audioBeat) + ", " + string(curBeat))
if(audioBeat != curBeat)
	event_user(1)


