/// @func scrDeactivateHeart(which)
/// @desc Deactivates heart
/// @param which Which character's heart to deactivate

var which = argument0;

with (which.heart) {
 
  var index = image_index;
  sprite_index = sprHeartEmpty;
  image_index = index;    

}