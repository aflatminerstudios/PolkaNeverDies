/// @description Insert description here
// You can write your code in this editor

// Change the aspect ratio
if(keyboard_check_pressed(ord("P"))) {
	if(global.aspectRatio == AspectRatio.FULL_SCREEN)
		global.aspectRatio = AspectRatio.WIDE_SCREEN;
	else
		global.aspectRatio = AspectRatio.FULL_SCREEN;
}



// Check to see if the aspect ration has changed
if(global.prevAspectRatio != global.aspectRatio) {
	scrUpdateWindowSettings();
}