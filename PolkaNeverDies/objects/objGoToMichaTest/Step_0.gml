/// @description Insert description here
// You can write your code in this editor

var testRoom = roomMichaTest2;

if(keyboard_check_pressed(ord("M"))) {
	if(room != testRoom)
		room_goto(testRoom);
	else
		room_goto(roomMain);
} else if(keyboard_check_pressed(ord("N"))) {
	room_restart()	
}
