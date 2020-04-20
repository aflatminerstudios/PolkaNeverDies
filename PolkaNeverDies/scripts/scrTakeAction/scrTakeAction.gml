/// @func scrTakeAction(act)
/// @desc Takes the action act
/// @param act The action to take

var act = argument0;

//When a character takes an action, it then turns the heart to empty
switch(act) {
  
  case "right":
    //Moves the right character
    var who = instance_find(objBandRight, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "left":
    //Moves the left character
    var who = instance_find(objBandLeft, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "down":
    //Moves the down character
    var who = instance_find(objBandDown, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "up":
    //Moves the up character
    var who = instance_find(objBandUp, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;    
  case "jump":
    //Jump all characters
    with (objBand) {
      scrJumpCharacter(self.id);       
      scrDeactivateHeart(self.id);
    }    
    break;
  case "duck":
    //Duck all characters;
    with (objBand) {
      scrDeactivateHeart(self.id); 
    }
    
    break;
  case "leftSpecial":    
  case "rightSpecial":
    with (objBand) {
      scrDeactivateHeart(self.id); 
    }
    break;
  
  
  case "miss":
  //If they skip an input, do nothing
    break;
  case "badleft":
  case "badright":
  case "badup":
  case "baddown":  
    //There was a bad input, so blat and don't move
    scrPlayBadNote(act);    
    break;
  default:
    //Should not get here, turn on debug msg if you think it's happening
    //show_debug_message("Invalid action");
    
}