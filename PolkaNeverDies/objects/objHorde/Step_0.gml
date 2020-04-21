/// @description Creep forward, etc.
// You can write your code in this editor



// Calculate the center point of the band
var bandCenter = 0;
var bandCount = 0;
with(objBand) {
	bandCenter += x;
	bandCount++;
}

// Average out the x position
bandCenter = bandCenter/bandCount;
if (go) {
  var dist = bandCenter - x;
  if (dist > minDistance) {
    x += moveSpeed * dist/minDistance;   
  } else {
    x += moveSpeed; 
  }
}