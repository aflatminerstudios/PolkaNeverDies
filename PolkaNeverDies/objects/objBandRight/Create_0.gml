/// @description Initialize Variables
// You can write your code in this editor

event_inherited();
forwardSpeed = 5;
forwardSteps = room_speed/3;

//spawn heart
heart = instance_create_layer(heartX + sprite_get_width(sprHeartEmpty) / 2, heartY, layer, objHeart);

