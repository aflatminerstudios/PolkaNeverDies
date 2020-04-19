/// @description Insert description here
// You can write your code in this editor

if(shouldCurve) {
	shader_set(shdWorldBend);

	// Draw the current contents of the application surface
	gpu_set_blendenable(false);
	draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_blendenable(true);

shader_reset();
}
/*
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(1, 1, "objPostDraw - Post-Draw event");
draw_set_color(c_white);
draw_text(0, 0, "objPostDraw - Post-Draw event");
*/

