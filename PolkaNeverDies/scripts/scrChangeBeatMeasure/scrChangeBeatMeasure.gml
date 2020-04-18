///@description scrChangeBeatMeasure(measure)
///@param measure Number of beats in a measure

var m = argument0;

with (objBeat) {
  measure = m;
  scrResetBeat();
}