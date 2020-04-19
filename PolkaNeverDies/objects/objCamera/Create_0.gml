/// @description Insert description here
// You can write your code in this editor

// Set parallax amounts
// For every unit the camera "moves forward", move the art this far backward

groundLevelParallax = 1.0;
roadworkParallax = -1.5;
frontTownParallax = -0.8;
backTownParallax = -0.5;

maxCameraVelocity = 10.0;


// Internals
cameraOffset = 0; // Amount the camera needs to move to be even with the band 

totalMoved = 0; //totalAmount the camera has "moved" since the game started