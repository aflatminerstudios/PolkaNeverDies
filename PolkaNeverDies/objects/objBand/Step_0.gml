/// @description Insert description here
// You can write your code in this editor

//Move forward if should be moving
if (moveForward) {
  x += forwardSpeed;
  forwardCount++;
  if (forwardCount > forwardGoal) {
    moveForward = false; 
  }
  
  while (place_meeting(x, y, objBlocking)) {   
    x -= 1;
  } 
}




if (jumping) {
  
  if (!landing) {
    //Only jump over if it wouldn't make you run through object
    if (!place_meeting(x + jumpHSpeed, y - jumpVSpeed, objBlocking)) {
      x += jumpHSpeed;
    }
    y -= jumpVSpeed;
    jumpCount++;
  
    if (y <= targetHeight) {      
      landing = true;  
    }
  
    /*if (jumpCount > jumpSteps) {
      y += jumpHeight;
      jumping = false; 
      landing = false;
      jumpCount = 0;
    }*/        
  } else {
    
    x += jumpHSpeed;
    if (!place_meeting(x, y + jumpVSpeed, objBlocking)) {   
      y += jumpVSpeed;
    }
    
    //while (place_meeting(x, y, objBlocking)) {   
      x += 1;
    //}
    
    jumpCount++;
    
    if (y >= groundHeight ) {
      show_debug_message("Changing y to groundHeight!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      y = groundHeight;
      jumping = false;
      landing = false;
      jumpCount = 0;
    }
  }
  
}