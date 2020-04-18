/// @func scrMoveCharacter(char)
/// @desc Tells the character char to move
/// @param char Who to move

var char = argument0;

with (char) {
  moveForward = true;
  forwardGoal += forwardSteps;
}