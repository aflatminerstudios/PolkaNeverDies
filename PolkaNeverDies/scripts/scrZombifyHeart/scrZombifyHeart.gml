/// @func scrZombifyHeart(which)
/// @desc Zombifies heart
/// @param which Which character's heart to zombify

var which = argument0;

with (objHeart) {
  if (bandMember != noone && bandMember == which) {
    sprite_index = sprHeartZombie;
  }
}