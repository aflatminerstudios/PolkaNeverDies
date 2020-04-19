/// @func scrDeactivateHeart(which)
/// @desc Deactivates heart
/// @param which Band member's heart to deactivate

var which = argument0;

with (which.heart) {
  if (sprite_index == sprHeartFull) {
    var index = image_index;
    sprite_index = sprHeartEmpty;
    image_index = index;    
  }
}