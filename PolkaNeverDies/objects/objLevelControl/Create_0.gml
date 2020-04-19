/// @description Initialize variables
// You can write your code in this editor


curLevel = 0;
baseMove = 104;
song[0] = sndMusic_34_120;
bpm[0] = 120;
measure[0] = 34;
levelEnd[0] = 5000;

minSpawn[0] = 1000;
maxSpawn[0] = 3000;

ground = 800;

lastSpawn = 0;

nextSpawn = irandom_range(100, 500);

//for gameover
with (objDataTransfer) {
  won = false;
  points = 0;
  numSurvivors = 0;
}