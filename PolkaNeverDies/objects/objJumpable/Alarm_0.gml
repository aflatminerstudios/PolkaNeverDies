/// @description Die
// You can write your code in this editor

//Spawn kill animation
var cloud = instance_create_depth(x, y + sprite_height, depth-100, objKillCloud);
//Current animation requires scaling
var scale = sprite_height / 64;
cloud.image_yscale *= scale;
scale = sprite_width/64;
cloud.image_xscale *= scale; 



instance_destroy();