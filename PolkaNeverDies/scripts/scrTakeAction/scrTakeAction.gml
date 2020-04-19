/// @func scrTakeAction(act)
/// @desc Takes the action act
/// @param act The action to take

var act = argument0;

switch(act) {
  
  case "right":
    var who = instance_find(objBandRight, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "left":
    var who = instance_find(objBandLeft, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "down":
    var who = instance_find(objBandDown, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;
  case "up":
    var who = instance_find(objBandUp, 0);
    if (who != noone) {
      scrMoveCharacter(who);
      scrDeactivateHeart(who);
    }
    break;    
  case "jump":
    with (objBand) {
      scrJumpCharacter(self.id);       
      scrDeactivateHeart(self.id);
    }    
    break;
  case "badleft":
  case "badright":
  case "badup":
  case "baddown":
    scrPlayBadNote(act);
    break;
  default:
    //show_debug_message("Invalid action");
    
}