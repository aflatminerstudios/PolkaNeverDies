/// @description Update the window size and appropriate viewport

// Update the window size if needed
if(global.prevAspectRatio != global.aspectRatio) {
	show_debug_message("Adjusting window size!");
	if(global.aspectRatio == AspectRatio.FULL_SCREEN) {
		surface_resize(application_surface, 1024, 768);
		window_set_size(1024, 768)
	} else {
		surface_resize(application_surface, 1024, 576);
		window_set_size(1024, 576)
	}
}


// Make sure the room is using the correct viewport
if(room == roomMain || 
	 room == roomMichaTest ||
	 room == roomMichaTest) {
	// Select the proper viewport for the current aspect ratio
	if(global.aspectRatio == AspectRatio.FULL_SCREEN) {
		view_visible[0] = true;
		view_visible[1] = false;
	} else {
		view_visible[0] = false;
		view_visible[1] = true;
	}
}

global.prevAspectRatio = global.aspectRatio;