/// @func scrJumpCharacter(char)
/// @desc Tells the character char to jump
/// @param char Who to jump

var char = argument0;

with (char) {
  if (!jumping) {
    /*moveForward = true;
    forwardGoal += forwardSteps;*/
    //y -= jumpHeight;
    jumping = true;
    landing = false;
    targetHeight = y - jumpHeight;
  
    //It takes jumpHeight / jumpVSpeed steps to get to top
    //So, you go jumpHSpeed * jumpHeight / jumpVSpeed horizontal to top
    //Then double that to get to bottom
    //So, check whether there is a collision in THAT spot and if so, speed up    
    var numSteps = jumpHeight / jumpVSpeed;
    var xChange = 2 * jumpHSpeed * numSteps;
    
    if (place_meeting(x + xChange, y, objJumpable)) {
      //Make sure you will get past object
      while (place_meeting(x + xChange, y, objJumpable)) {
        //TODO: Tune this? Should it be += some number?
        jumpHSpeed += 2;
        xChange = 2 * jumpHSpeed * numSteps;        
      }      
    } else {
      //Otherwise go normal speed
      jumpHSpeed = baseJumpHSpeed; 
    }
  }
  
  //TODO: Recalculate based on actual path and object you might hit so it doesn't slide?
 
 
 
}