/// @func scrFindNearestFront(first, target)
/// @desc Finds the nearest target to first
/// @param first Object searching
/// @param target Object being searched for

var first = argument0;
var target = argument1;

var found = instance_nearest(first.x, first.y, target);

//If there are no instances of the type, move on
if (found == noone) {
  return noone;
}

//If there is one, but it is to the left
if (found.x < first.x) {
  var minDist = 10000000;
  var curClosest = noone;
  
  //Loop through all targets and find the closest to the right
  with (target) {
    var dist = x - first.x;
    if (dist < minDist && dist > 0) {
      curClosest = self.id;
      minDist = dist;
    }
  }

  found = curClosest;
}

//The found object is the current closest object in front
return found;