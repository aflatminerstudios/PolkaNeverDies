/// @description Initialize Variables
// You can write your code in this editor

event_inherited();
forwardSpeed = 7;
forwardSteps = room_speed/2.5;

heart = instance_create_layer(heartX, heartY - sprite_get_height(sprHeartEmpty) / 2, layer, objHeart);

