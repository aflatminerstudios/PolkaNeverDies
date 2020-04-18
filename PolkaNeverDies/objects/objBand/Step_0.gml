/// @description Insert description here
// You can write your code in this editor

//Move forward if should be moving
if (moveForward) {
  x += forwardSpeed;
  forwardCount++;
  if (forwardCount > forwardGoal) {
    moveForward = false; 
  }
}