/// @description Initialize variables
// You can write your code in this editor

//What level are you on?
curLevel = 0;

//How much camera movement currently happens before game starts
baseMove = 104;

//End of level and spawn times for this level
levelEnd[0] = 5000;
minSpawn[0] = 1000;
maxSpawn[0] = 3000;

//Horde variables for this level (currently do nothing)
hordeSpeed[0] = 0.5;
hordeMax[0] = 1.50;
hordeAdd[0] = 0.01;
hordeMinDist[0] = 500;

//Ground position (important for spawning)
ground = 970;

//What count did the last obstacle spawn on?
lastSpawn = 0;

//When will the next obstacle spawn?
nextSpawn = irandom_range(100, 500);

//for gameover
with (objDataTransfer) {
  won = false;
  points = 0;
  numSurvivors = 0;
}

// For setting horde variables
alarm[0] = 1;

//Currently not used
song[0] = sndMusic_34_120;
bpm[0] = 120;
measure[0] = 34;

