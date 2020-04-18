/// @func scrCheckRecipes()
/// @desc Checks current command queue against recipe list

with (objBeatBuffer) {
  
  var s = "";
  if (ds_list_size(commands) > 0) {    
    for (var i = 0; i < ds_list_size(commands); ++i) {
      s += commands[| i];
    }
  }
  
  if (!is_undefined(recipes[? s])) {
    return recipes[? s]; 
  }
  
  return " ";
  
}

return " ";