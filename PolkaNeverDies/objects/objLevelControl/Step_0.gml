/// @description Spawn
// You can write your code in this editor

//Find out amount camera has moved since game start
var totalMoved = objCamera.totalMoved - baseMove;

//Compare amount moved since last spawn to next spawn time
if ((totalMoved - lastSpawn) > nextSpawn) {

  //What do you spawn?
  var spawn_type = choose("rock", "duckable","rock", "duckable","rock", "duckable","rock", "duckable","rock", "duckable");
  
  var objToSpawn;  
  var yOffset = 0;
  switch(spawn_type) {
    case "rock":
      objToSpawn = objJumpable;
      break;
    case "duckable":
      objToSpawn = objDuckable;
      yOffset = 20;
      break;
    default:
      objToSpawn = objJumpable;    
  }
  
  //Create it off the right of the screen
  instance_create_layer( 2112, ground - yOffset, layer, objToSpawn);
    
  //And set some variables
  lastSpawn = totalMoved;
  nextSpawn = irandom_range(minSpawn[curLevel], maxSpawn[curLevel]);
  
}


//If moved enough, create goal
if (totalMoved > levelEnd[curLevel] && instance_number(objFinish) == 0) {
  instance_create_depth( 2112, 1024, depth, objFinish);    
}

//If no more band members, end game
if (instance_number(objBand) <= 0 && instance_number(objKillCloud) <= 0) {
  scrGameOver(false);  
}
