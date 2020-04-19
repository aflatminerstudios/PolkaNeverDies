/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("F"))) {
	shouldCurve = !shouldCurve;
	
	// Make sure we enable/disable the automatic surface drawing *before* the draw event begins
	application_surface_draw_enable(!shouldCurve);

}