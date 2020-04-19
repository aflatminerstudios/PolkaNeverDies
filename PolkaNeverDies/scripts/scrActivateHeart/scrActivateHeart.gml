/// @func scrActivateHeart(which)
/// @desc Activates heart
/// @param which Which character's heart to activate

var which = argument0;

with (objHeart) {
  if (bandMember != noone && bandMember == which) {
    sprite_index = sprHeartFull;
  }
}