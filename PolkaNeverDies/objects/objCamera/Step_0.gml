/// @description Insert description here
// You can write your code in this editor

cameraOffset = 0;

if(instance_number(objBand) > 0) {
	
	var idealCameraX = x;
	
	// Calculate the center point of the band
	var bandCenter = 0;
	var bandCount = 0;
	with(objBand) {
		bandCenter += x;
		bandCount++;
	}

	// Average out the x position
	bandCenter = bandCenter/bandCount;
	
	// Calc the difference
	cameraOffset = idealCameraX - bandCenter;
}

var cameraVelocity;
if(cameraOffset < 0.5) {
  cameraVelocity = cameraOffset;
} else {
	cameraVelocity = lerp(0, cameraOffset, 0.05);
	cameraVelocity = min(cameraVelocity, maxCameraVelocity);
}

// Adjust each of the objects in relation to the camera
with(objBand) {
	x += cameraVelocity*other.groundLevelParallax;
}

with(objHorde) {
	x += cameraVelocity*other.groundLevelParallax;
}

with(objBlocking) {
	x += cameraVelocity*other.groundLevelParallax;
}

// Move the backgrounds
var roadworkLayer = layer_get_id("Roadwork")
var roadworkX = layer_get_x(roadworkLayer);
layer_x(roadworkLayer, roadworkX - cameraVelocity*roadworkParallax);

var frontTownLayer = layer_get_id("FrontOfTown")
var frontTownX = layer_get_x(frontTownLayer);
layer_x(frontTownLayer, frontTownX - cameraVelocity*frontTownParallax);

var backTownLayer = layer_get_id("BackOfTown")
var backTownX = layer_get_x(backTownLayer);
layer_x(backTownLayer, backTownX - cameraVelocity*backTownParallax);