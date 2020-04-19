/// @func scrJumpCharacter(char)
/// @desc Tells the character char to jump
/// @param char Who to jump

var char = argument0;

with (char) {
  /*moveForward = true;
  forwardGoal += forwardSteps;*/
  y -= jumpHeight;
  jumping = true;
}