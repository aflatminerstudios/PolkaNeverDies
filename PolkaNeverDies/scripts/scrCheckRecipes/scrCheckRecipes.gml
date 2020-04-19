/// @func scrCheckRecipes()
/// @desc Checks current command queue against recipe list


with (objBeatBuffer) {
  
  var s = "";
  //Add each command to the string s (to compare to recipe list)
  if (ds_list_size(commands) > 0) {    
    for (var i = 0; i < ds_list_size(commands); ++i) {
      s += commands[| i];
    }   
  }
  
  ///TODO: Fix this so it accepts bad inputs, but have a variable to check for strict inputs
  //Return the command if it matches a known recipe
  if (!is_undefined(recipes[? s])) {
    return recipes[? s]; 
  }
  
  //Return empty space  otherwise
  return " ";
  
}

//Should never get here, return space just in case
return " ";