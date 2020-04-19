/// @func scrZombifyHeart(which)
/// @desc Zombifies heart
/// @param which Band member's heart to zombify

var which = argument0;

with (which.heart) {
  
  var index = image_index;
  sprite_index = sprHeartZombie;
  image_index = index;    
  
}