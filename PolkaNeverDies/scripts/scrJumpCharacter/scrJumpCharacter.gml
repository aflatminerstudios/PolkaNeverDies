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
    jumpHSpeed = baseJumpHSpeed;
    //It takes jumpHeight / jumpVSpeed steps to get to top
    //So, you go jumpHSpeed * jumpHeight / jumpVSpeed horizontal to top
    //Then double that to get to bottom
    //So, check whether there is a collision in THAT spot and if so, speed up    
    var numSteps = jumpHeight / jumpVSpeed;
    var xChange = 2 * jumpHSpeed * numSteps;
    

    
    if (place_meeting(x + xChange, y, objJumpable)) {
      
      /* Time to try to brute force this bitch
        Simulate the jump, if you hit something, jump faster
        
        */
      simX = x + xChange;
      simY = y;
      
      //Loop until no collision
      while (place_meeting(simX, simY, objJumpable)) {       
        jumpHSpeed += 1;
        simX = x;
        simY = y;
        while (simY >= targetHeight) {          
          if (!place_meeting(simX + jumpHSpeed, simY - jumpVSpeed, objJumpable)) {            
            simX += jumpHSpeed;
          }
          simY -= jumpVSpeed;
        }
        coll = false;
        while (simY <= groundHeight && coll = false) {          
          simX += jumpHSpeed;
          simY += jumpVSpeed;
        
          if (place_meeting(simX, simY, objJumpable)) {            
            coll = true;
            finalX = simX;
          }
        }
        if (simY >= groundHeight) {
          simY = groundHeight;
          finalX = simX;
        }
      }
    } else {
      //Otherwise go normal speed
      jumpHSpeed = baseJumpHSpeed; 
    }
  }
  
  //TODO: Recalculate based on actual path and object you might hit so it doesn't slide?
 
 
 
}



      /*In theory, jumper has from top of jumpable sprite to top of height and back down
      to jumpable ssprite to get far enough right not to hit the jumpable sprite.      
      So, (jumpHeight - spriteHeight) * 2 vertical pixels to move. 
      Needs to travel distance from self to sprite, plus the whole size of the sprite.
      So, ((x of nearest jumpable) - x) + (sprite_width/2) is the amount to move/
      Travels jumpVSpeed vertical pixels a step and jumpHSpeed horizontal pixels/step.
      So, has vPixels / vSpeed steps to travel hPixels
      */
      /*var nearest = instance_place(x + xChange, y, objJumpable);      
      var vPixels = (jumpHeight - nearest.sprite_height) * 2;
      var addlPixels = nearest.bbox_left - bbox_right;
      var hPixels = ((nearest.bbox_left - bbox_left) + nearest.sprite_width);
      show_debug_message(string(nearest.bbox_left) + " - " + string(bbox_left));
      show_debug_message(string(nearest.x) + " - " + string(x));
      show_debug_message("a + " + string(addlPixels));
      var numSteps = vPixels / jumpVSpeed;
      
      //This formula came form wolfram alpha
      //It came from distance = (numsteps + addlPixels/hSpeed)/hSpeed
      jumpHSpeed = ceil((numSteps - sqrt(4 * addlPixels * hPixels + numSteps * numSteps)) / (2 * hPixels));//ceil(hPixels / numSteps);
      show_debug_message(string(jumpHSpeed) + " is new speed to go " + string(hPixels) + " pixels");
      show_debug_message("In " + string(numSteps) + " steps");
      xChange = 2 * jumpHSpeed * numSteps;            
      show_debug_message("Start jump at: " + string(x));
      //Make sure you will not land on object (doesn't take into account object height)
      while (place_meeting(x + xChange, y, objJumpable)) {        
        show_debug_message("This shouldn't happen!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        jumpHSpeed += 2;
        xChange = 2 * jumpHSpeed * numSteps;        
      }      */