/// @func scrTakeAction(act)
/// @desc Takes the action act
/// @param act The action to take

var act = argument0;

switch(act) {
  
  case "right":
    var who = instance_find(objBandRight, 0);
    scrMoveCharacter(who);
    break;
  case "left":
    var who = instance_find(objBandLeft, 0);
    scrMoveCharacter(who);
    break;
  case "down":
    var who = instance_find(objBandDown, 0);
    scrMoveCharacter(who);
    break;
  case "up":
    var who = instance_find(objBandUp, 0);
    scrMoveCharacter(who);
    break;    
  case "jump":
    with (objBand) {
      scrJumpCharacter(self.id); 
    }    
  case "badleft":
  case "badright":
  case "badup":
  case "baddown":
    scrPlayBadNote(act);
  default:
    //show_debug_message("Invalid action");
    
}