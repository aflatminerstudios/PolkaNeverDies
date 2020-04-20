/// @description Insert description here
// You can write your code in this editor

//Move forward if should be moving
if (moveForward) {
  x += forwardSpeed;
  forwardCount++;
  //Finish if you've reached goal
  if (forwardCount > forwardGoal) {
    moveForward = false; 
  }
  
  //Make sure you don't collide with something
  while (place_meeting(x, y, objBlockingParent)) {   
    x -= 1;
  } 
}



//Jump!
if (jumping) {
  
  //Jump up until you reach height
  if (!landing) {
    //Only move horizontally if it wouldn't make you run through object
    if (!place_meeting(x + jumpHSpeed, y - jumpVSpeed, objBlockingParent)) {
      x += jumpHSpeed;
    }
    y -= jumpVSpeed;
    jumpCount++;
  
    //Reached apex
    if (y <= targetHeight) {      
      landing = true;  
    }
      
  } else {
  
    
    x += jumpHSpeed;
    //Slide if encountering object
    //if (!place_meeting(x, y + jumpVSpeed, objBlockingParent)) {   
      y += jumpVSpeed;
    //}
    
    jumpCount++;

    //If jump speed pushes you to or below ground, land on ground
    if (y >= groundHeight ) {    
      y = groundHeight;
      jumping = false;
      landing = false;
      jumpCount = 0;
      show_debug_message("Stop jump at: " + string(x));
    }
  }
  
}