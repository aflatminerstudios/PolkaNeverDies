/// @description Get character input to go to other rooms
// You can write your code in this editor

if (ready) {
  if (scrCheckRight() || keyboard_check_pressed(ord("I"))) {
		if(targetView == "title")	
			targetView = "instructions";
		else if(targetView == "credits")	
			targetView = "title";
  } else if (scrCheckLeft() || keyboard_check_pressed(ord("C"))) {
		if(targetView == "instructions")	
			targetView = "title";
		else if(targetView == "title")	
			targetView = "credits";
  }
  else if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
    room_goto(roomMain); 
  }
}


var activeCamera = view_camera[0];
if(global.aspectRatio == AspectRatio.FULL_SCREEN)
	activeCamera = view_camera[0];
else if(global.aspectRatio == AspectRatio.WIDE_SCREEN)
	activeCamera = view_camera[1];


var cameraX = camera_get_view_x(activeCamera);
var cameraY = camera_get_view_y(activeCamera);

var targetX = cameraX;
if(targetView == "title") {
	targetX = titleX;
} else if(targetView == "credits") {
	targetX = creditsX;
} else if(targetView == "instructions") {
	targetX = instructionsX;
}

var newCameraX = cameraX;
if (targetX != cameraX) {
	newCameraX = lerp(cameraX, targetX, 0.14);
	if(abs(newCameraX - targetX) < 2)
		newCameraX = targetX;
	camera_set_view_pos(activeCamera, newCameraX, cameraY);
}

var slideFactor = 1.5;

layer_x("Credits", -slideFactor * newCameraX);
layer_x("Title", -slideFactor * (newCameraX - titleX) );
layer_x("Instructions", -slideFactor * (newCameraX - instructionsX));