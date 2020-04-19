/// @description Spawn
// You can write your code in this editor

//Find out amount camera has moved since game start
var totalMoved = objCamera.totalMoved - baseMove;

//Compare amount moved since last spawn to next spawn time
if ((totalMoved - lastSpawn) > nextSpawn) {

  //What do you spawn?
  var spawn_type = choose("rock");
  var objToSpawn;  
  switch(spawn_type) {
    case "rock":
      objToSpawn = objJumpable;
      break;
    default:
      objToSpawn = objJumpable;    
  }
  
  //Create it off the right of the screen
  instance_create_layer( 2112, ground, layer, objToSpawn);
    
  //And set some variables
  lastSpawn = totalMoved;
  nextSpawn = irandom_range(minSpawn[curLevel], maxSpawn[curLevel]);
  
}


//If moved enough to reach goal, end game
if (totalMoved > levelEnd[curLevel]) {
  scrGameOver(true); 
}

//If no more band members, end game
if (instance_number(objBand) <= 0 && instance_number(objKillCloud) <= 0) {
  scrGameOver(false);  
}
