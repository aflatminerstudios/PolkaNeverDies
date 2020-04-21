/// @description Insert description here
// You can write your code in this editor

//Move forward if should be moving
if (moveForward) {
	if(sprite_index != stepSprite || forwardCount == 0) {
		sprite_index = stepSprite;
		image_index = 0;	
	}
		
	
  x += forwardSpeed;
  forwardCount++;
  //Finish if you've reached goal
  if (forwardCount > (room_speed * 60/objBeat.bpm)) {
    moveForward = false; 
    forwardCount = 0;
  }
  
  //Make sure you don't collide with something
  while (place_meeting(x, y, objBlockingParent)) {   
    var c = instance_place(x, y, objBlockingParent);
    dir = sign(c.x - x);
      
    
    x -= 1 * dir;
  }
}



//Jump!
if (jumping) {
  
	//Jump up until you reach height
  if (!landing) {
		// Set the sprite to be the jumping upward sprite
		if(sprite_index != jumpSprite) {
			sprite_index = jumpSprite;
			image_index = 0;
		}
		
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
		// Set the sprite to be the jumping downward (falling) sprite
		if(sprite_index != fallSprite) {
		sprite_index = fallSprite;
		image_index = 0;
		}
    
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


//Duck action
if (ducking) {
	if(sprite_index != duckSprite || duckCount == 0) {
		sprite_index = duckSprite;
		image_index = 0;	
	}
		
	
  x += duckSpeed;
  duckCount++;
  
  //Ducking stops on beat for now
  //Finish if you've reached goal
  /*if (duckCount > duckSteps) {
    ducking = false; 
  }*/
  
  //Make sure you don't collide with something
  while (place_meeting(x, y, objBlockingParent)) {   
    x -= 1;
  } 
}


if(!moveForward && !jumping && !ducking && sprite_index != idleSprite) {
	sprite_index = idleSprite
	image_index = 0;
}