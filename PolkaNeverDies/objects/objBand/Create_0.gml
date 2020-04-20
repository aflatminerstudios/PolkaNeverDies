/// @description Initialize variables
// You can write your code in this editor

//For walking
moveForward = false;
forwardSpeed = 1;
forwardSteps = room_speed/10;
forwardGoal = 0;
forwardCount = 0;
stop = false;

//For jumping
jumpHeight = 300;
jumpVSpeed = 8;
baseJumpHSpeed = 1;
jumpHSpeed = baseJumpHSpeed;
jumpCount = 0;
jumping = false;
landing = false;
targetHeight = y;
groundHeight = y;

// For ducking
ducking = false;
duckBaseSpeed = 3;
duckSpeed = duckBaseSpeed;
duckCount = 0;


//For spawning hearts (position)
heartX = 120;
heartY = 100;