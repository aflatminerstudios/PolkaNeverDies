/// @func scrBuildRecipeList(recipeList)
/// @desc Puts recipes into recipe list
/// @param recipes The actual list

var recipeList = argument0;

//3/4 specials
ds_map_add(recipeList, "upupup", "jump");
ds_map_add(recipeList, "downdowndown", "duck");
ds_map_add(recipeList, "leftleftleft", "leftSpecial");
ds_map_add(recipeList, "rightrightright", "rightSpecial");

//4/4 specials
ds_map_add(recipeList, "upupupup", "jump");
ds_map_add(recipeList, "downdowndowndown", "duck");
ds_map_add(recipeList, "leftleftleftleft", "leftSpecial");
ds_map_add(recipeList, "rightrightrightright", "rightSpecial");

