/// @description Update the window size and appropriate viewport

// Update the window size if needed
// (Checks to see if global.aspectRatio has changed since the last run of this script)
if(global.prevAspectRatio != global.aspectRatio) {
	global.prevAspectRatio = global.aspectRatio;
	
	if(global.aspectRatio == AspectRatio.FULL_SCREEN) {
		surface_resize(application_surface, 1024, 768);
		window_set_size(1024, 768)
	} else {
		surface_resize(application_surface, 1024, 576);
		window_set_size(1024, 576)
	}
	display_set_gui_size(-1, -1); // Force the GUI size to be the same as the application surface
}


// Make sure the room is using the correct viewport
// Viewport 0 is full screen (AspectRatio.FULL_SCREEN)
// Viewport 1 is wide screen (AspectRatio.WIDE_SCREEN)

if(room == roomMain || 
	 room == roomMichaTest ||
	 room == roomMichaTest2) {
	// Select the proper viewport for the current aspect ratio
	if(global.aspectRatio == AspectRatio.FULL_SCREEN) {
		view_visible[0] = true;
		view_visible[1] = false;
	} else {
		view_visible[0] = false;
		view_visible[1] = true;
	}
}