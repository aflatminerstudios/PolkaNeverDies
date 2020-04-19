/// @func scrKillBandMember(band)
/// @description  Kills a band member
/// @param band The person to die

var band = argument0;


with (band) {
  //This alarm kills them and spawns kill animation
  if (alarm[0] <= 0) {
    alarm[0] = room_speed * 0.25; 
  }
  
  //Turn heart into zombie heart
  scrZombifyHeart(band);
  
}