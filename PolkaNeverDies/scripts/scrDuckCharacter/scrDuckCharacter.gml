/// @func scrDuckCharacter(char)
/// @desc Tells the character char to duck
/// @param char Who to duck

var char = argument0;

with (char) {
  //Reset all duck variables
  duckSpeed = duckBaseSpeed;
  ducking = true;
  duckCount = 0;
  
  //Should be equivalent to 1 beat of steps, unless there is slowdown
  var numSteps = room_speed * 60/objBeat.bpm;
  
  //How much should be expected to walk in one beat
  var xChange = 2 * duckSpeed * numSteps;
 
  var count = 0;
  //TODO: ask Micha about whether this is minimum number of steps or not
  while (place_meeting(x + xChange, y, objDuckable) || place_meeting(x + xChange+1, y, objDuckable)) {
    var nearest = instance_place(x + xChange, y, objDuckable);
    var hPixels = (nearest.bbox_left - bbox_left) + nearest.sprite_width + 3;
    //var hPixels = (nearest.x - x) + nearest.sprite_width/2 + sprite_width/2;
    duckSpeed = ceil(hPixels / numSteps) + 2// + count;
    xChange = 2 * duckSpeed * numSteps;
    count++;
  }
    
}
