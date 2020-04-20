/// @func scrDestroyObject(object)
/// @description  Kills an obstacle/enemy
/// @param object The thing to be killed

var object = argument0;


with (object) {
  //This alarm kills them and spawns kill animation
  if (alarm[0] <= 0) {
    alarm[0] = room_speed * 0.25; 
  }
}