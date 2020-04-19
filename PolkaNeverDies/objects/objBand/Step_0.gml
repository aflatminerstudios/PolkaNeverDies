/// @description Insert description here
// You can write your code in this editor

//Move forward if should be moving
if (moveForward) {
  x += forwardSpeed;
  forwardCount++;
  if (forwardCount > forwardGoal) {
    moveForward = false; 
  }
  
  while (place_meeting(x, y, objBlocking)) {   
    x -= 1;
  }
  
}

if (jumping) {
  x += jumpHSpeed;
  jumpCount++;
  if (jumpCount > jumpSteps) {
    y += jumpHeight;
    jumping = false; 
    jumpCount = 0;
  }
}