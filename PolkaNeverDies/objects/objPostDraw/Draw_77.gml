/// @description Insert description here
// You can write your code in this editor

if(shouldCurve) {
	shader_set(shdWorldBend);

	// Per YoYo docs, disabling gpu blendable will interfere with certain kinds of alpha compositing
	//   But is necessary to draw the application surface in this way
	gpu_set_blendenable(false);
	// Draw the current contents of the application surface using the post processing shader
	draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, 1);
	
	gpu_set_blendenable(true);

	shader_reset();
}

