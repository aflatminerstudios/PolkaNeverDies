/// @func scrBounceBall()

with (objBouncingBall) {
  beats++;
  beats %= measureLength * 2;
  bouncing = true;
  falling = false;
  baseX = x;
  y = baseY;
  baseY = y;
  
  xSpeed = xMovement/steps;
  ySpeed = 2 * (maxHeight / steps)
  startMove = 1.0*audio_sound_get_track_position(objBeat.activeSongAudio)
}