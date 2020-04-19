/// @description Initialize variables
// You can write your code in this editor

gameLength = 30;



measure = 3;
bpm = 120;

curBeat = 0;
totalBeat = 0;
curMeasure = 0;

scrResetBeat();

playMetronome = false;
playSong = false;

song = sndMusic_34_120;

activeMeasure = true;

instance_create_layer(0, 0, layer, objBeatBuffer);
instance_create_layer(1580, 816, layer, objJumpable);