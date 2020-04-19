/// @func scrDeactivateHeart(which)
/// @desc Deactivates heart
/// @param which Which character's heart to deactivate

var which = argument0;

with (objHeart) {
  if (bandMember != noone && bandMember == which) {
    sprite_index = sprHeartEmpty;
  }
}