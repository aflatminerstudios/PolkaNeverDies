/// @func scrActivateHeart(which)
/// @desc Activates heart
/// @param which Which character's heart to activate

var which = argument0;

with (which.heart) {

  var index = image_index;
  sprite_index = sprHeartFull;
  image_index = index;

}