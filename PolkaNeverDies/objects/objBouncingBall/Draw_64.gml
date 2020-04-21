/// @description Insert description here
// You can write your code in this editor

//draw_sprite(sprite_index, image_index, x, y);



isInIntro = false;

with(objBeat) {
	var beatLength = 1.0*60/bpm;
	var measureLength = measure*beatLength
	var introLength = measuresInIntro*measureLength;

	var trackPosition = 1.0*audio_sound_get_track_position(activeSongAudio);
	if(trackPosition < introLength - beatLength) {
		other.isInIntro = true;
		show_debug_message("   ==Micha=== We are in the Intro (inside the with)");
	} else {
		show_debug_message("   ==Micha=== NOT in the Intro (inside the with)");
	}
}

if(!isInIntro) {
	show_debug_message("   ==Micha=== NOT in the Intro (outside the with)");
	draw_sprite(sprite_index, image_index, x, y);
} else {
	show_debug_message("   ==Micha=== We are in the Intro (outside the with)");
}