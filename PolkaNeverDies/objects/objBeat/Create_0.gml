/// @description Initialize variables
// You can write your code in this editor

gameLength = 30;



measure = 3;
bpm = 120;
measuresInSong = 4;

curBeat = 0;
totalBeat = 0;
curMeasure = 0;
totalMeasure = 0;

scrResetBeat();

playMetronome = false;
playSong = true;

song = sndMusic_34_120;
activeSongAudio = noone;
activeSongGain = 0;
activeSongTargetGain = activeSongGain;

activeMeasure = true;

instance_create_layer(0, 0, layer, objBeatBuffer);