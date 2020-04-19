/// @func scrCheckInput()
/// @desc Checks input and returns value

//Checks all 4 inputs, otherwise returns empty space
if (scrCheckRight()) {
  return "right";
} else if (scrCheckLeft()) {
  return "left"; 
} else if (scrCheckDown()) {
  return "down"; 
} else if (scrCheckUp()) {
  return "up"; 
} else {
  return " "; 
}