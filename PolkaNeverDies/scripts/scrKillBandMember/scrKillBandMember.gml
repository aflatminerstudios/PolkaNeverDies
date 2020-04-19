/// @func scrKillBandMember(band)
/// @description  Kills a band member
/// @param band The person to die

var band = argument0;


with (band) {
  if (alarm[0] <= 0) {
    alarm[0] = room_speed * 0.25; 
  }
  
  scrZombifyHeart(band);
  
}