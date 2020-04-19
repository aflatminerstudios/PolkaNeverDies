/// @func scrMoveCharacter(char)
/// @desc Tells the character char to move
/// @param char Who to move

var char = argument0;

with (char) {
  moveForward = true;
  //This is in case it's ever set up with a beat too fast for a character to finish walking in one beat
  //In other cases, this is identical to forwardGoal = forwardSteps
  forwardGoal += forwardSteps;
}