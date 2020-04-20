/// @func scrJumpCharacter(char)
/// @desc Tells the character char to jump
/// @param char Who to jump

var char = argument0;

with (char) {
  if (!jumping) {
    
    //Set variables to start jumping
    jumping = true;
    landing = false;
    //Make sure you jump higher than current position
    targetHeight = y - jumpHeight;
  
    //It takes jumpHeight / jumpVSpeed steps to get to top
    //So, you go jumpHSpeed * jumpHeight / jumpVSpeed horizontal to top
    //Then double that to get to bottom
    //So, check whether there is a collision in THAT spot and if so, speed up    
    var numSteps = jumpHeight / jumpVSpeed;
    var xChange = 2 * jumpHSpeed * numSteps;
    
    /*In theory, jumper has from top of jumpable sprite to top of height and back down
      to jumpable ssprite to get far enough right not to hit the jumpable sprite.      
      So, (jumpHeight - spriteHeight) * 2 vertical pixels to move. 
      Needs to travel distance from self to sprite, plus the whole size of the sprite.
      So, ((x of nearest jumpable) - x) + (sprite_width/2) is the amount to move/
      Travels jumpVSpeed vertical pixels a step and jumpHSpeed horizontal pixes/step
      */
      
    var nearestJumpable = 0;
    var pixelsToMove = (jumpHeight - 0);
    
    if (place_meeting(x + xChange, y, objJumpable)) {
      //Make sure you will not land on object (doesn't take into account object height)
      while (place_meeting(x + xChange, y, objJumpable)) {        
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