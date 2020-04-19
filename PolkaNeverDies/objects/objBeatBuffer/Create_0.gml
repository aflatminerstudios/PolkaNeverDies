/// @description Initialize variables
// You can write your code in this editor

//This holds list of active commands
commands = ds_list_create();

//This holds list of "recipes" for commands
recipes = ds_map_create();
scrBuildRecipeList(recipes);