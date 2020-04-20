/// @description Initialize variables
// You can write your code in this editor

//For tracking info
curBeat = 0;
totalBeat = 0;
curMeasure = 0;
totalMeasure = 0;

scrResetBeat();

//Make audio play
playMetronome = false;
playSong = true;



//Sets info about song
song = sndMusic_34_120;
measure = 3;
bpm = 120;
measuresInSong = 4;

//For playing song
activeSongAudio = noone;
activeSongGain = 0;
activeSongTargetGain = activeSongGain;

//Does this measure accept input?
activeMeasure = true;

instance_create_layer(0, 0, layer, objBeatBuffer);

//for scoring
pointsPerBeat = 5;
winningPoints = 100;