/// @func scrQueueInput(which)
/// @desc takes in input and queues it for the next measure
/// @param which The input value

var which = argument0;

//If the command isn't empty
if (which != " ") {
  //Adds the command to the buffer
  with (objBeatBuffer) {
    ds_list_add(commands, which);
  }
  //show_debug_message("Queuing " + which);
  
  //Makes the heart full for the appropriate command
  switch(which) {
  
  case "right":
    var who = instance_find(objBandRight, 0);
    if (who != noone) {
      //scrMoveCharacter(who);
      scrActivateHeart(who);
    }
    break;
  case "left":
    var who = instance_find(objBandLeft, 0);
    if (who != noone) {
      //scrMoveCharacter(who);
      scrActivateHeart(who);
    }
    break;
  case "down":
    var who = instance_find(objBandDown, 0);
    if (who != noone) {
      //scrMoveCharacter(who);
      scrActivateHeart(who);
    }
    break;
  case "up":
    var who = instance_find(objBandUp, 0);
    if (who != noone) {
      //scrMoveCharacter(who);
      scrActivateHeart(who);
    }
    break;    
  case "jump":
    with (objBand) {
      scrJumpCharacter(self.id); 
     // scrActivateHeart(self.id);
    }    
    break;
  case "badleft":
  case "badright":
  case "badup":
  case "baddown":
    
  default:
    //show_debug_message("Invalid action");
  }
  //Clears the buffer
  scrEmptyBuffer();
  
 //Lets input control know an input has been queued
 with (objInputControl) {
    hasInput = true;
 }
}