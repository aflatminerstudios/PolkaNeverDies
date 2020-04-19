/// @description Die
// You can write your code in this editor

var cloud = instance_create_depth(x, y, depth-100, objKillCloud);

var scale = sprite_height / 64;
cloud.image_yscale *= scale;
scale = sprite_width/64;
cloud.image_xscale *= scale; 



instance_destroy();