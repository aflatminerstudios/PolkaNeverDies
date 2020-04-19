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
    x += jumpHSpeed;
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
    y += jumpVSpeed;
    jumpCount++;
    
    if (y >= groundHeight ) {
      y = groundHeight;
      jumping = false;
      landing = false;
      jumpCount = 0;
    }
  }
  
}