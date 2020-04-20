/// @desc hecks for down input
/// @func scrCheckDown() 


if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
  return true;
}