/// @func scrCheckInput
/// @desc Checks input and returns value

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