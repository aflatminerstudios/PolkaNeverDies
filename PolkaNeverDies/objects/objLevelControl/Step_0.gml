/// @description Spawn
// You can write your code in this editor


var totalMoved = objCamera.totalMoved - baseMove;

if ((totalMoved - lastSpawn) > nextSpawn) {

  var spawn_type = choose("rock");
  var objToSpawn;
  
  switch(spawn_type) {
    case "rock":
      objToSpawn = objJumpable;
      break;
    default:
      objToSpawn = objJumpable;    
  }
  
  instance_create_layer( 2112, ground, layer, objToSpawn);
  
  show_debug_message("Spawning");
  lastSpawn = totalMoved;
  nextSpawn = irandom_range(minSpawn[curLevel], maxSpawn[curLevel]);
  show_debug_message("Next spawn is: " + string(nextSpawn));

}

if (totalMoved > levelEnd[curLevel]) {
  scrGameOver(true); 
}