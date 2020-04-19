/// @description Initialize variables
// You can write your code in this editor

measure = 3;
bpm = 100;

curBeat = 0;
totalBeat = 0;

scrResetBeat();

playMetronome = false;
playSong = false;

song = sndMusic_34_100;

activeMeasure = true;

instance_create_layer(0, 0, layer, objBeatBuffer);
