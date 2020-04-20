/// @description Get character input to go to other rooms
// You can write your code in this editor

if (ready) {
  if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("I"))) {
    room_goto(roomInstructions); 
  } else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("C"))) {
    room_goto(roomCredits); 
  }
  else if (keyboard_check_pressed(vk_anykey)) {
    room_goto(roomMain); 
  }
}