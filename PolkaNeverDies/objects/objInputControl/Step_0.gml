/// @description Insert description here
// You can write your code in this editor

if (!postCheck) {
  //Moves everything down buffer 1
  for (var i = 0; i < bufferSize-1; ++i) {  
    buffer[i] = buffer[i + 1]; 
  }


  if (!badInput) {
    var top = buffer[0];


    //Fill buffer with input if appropriate
    buffer[bufferSize - 1] = scrCheckInput();
    
    /* //Uncomment to print buffer
    var s = "";
    for (var i = 0; i < bufferSize -1; ++i) {
      s = s + " : " + buffer[i]; 
    }

    show_debug_message(s);
    */

    //If something comes off the end of the buffer, it is wrong
    if (top != " ") {
      badInput = true;
      badString = "bad" + top;    
      scrQueueInput(badString);
    }

  }

}
if (postCheck) { 
  postCheckCount += 1;  
  //show_debug_message("Postcheck: " + string(ds_list_size(objBeatBuffer.commands)));
  if (postCheckCount > postCheckMax) {    
    if (ds_list_size(objBeatBuffer.commands) == objBeat.measure){
      var action = scrCheckRecipes();
     // show_debug_message("Checking Recipes: action = " + action);

      if (action != " ") {
        while (ds_list_size(objBeatBuffer.commands) > 0) {
          ds_list_delete(objBeatBuffer.commands,0); 
        }
        scrTakeAction(action);
      }
     }
    postCheckCount = 0;
    postCheck = false;
    hasInput = false;
  } else {
    var input = scrCheckInput();
    if (input != " " && !hasInput) {
      scrQueueInput(input);
      postCheckCount = postCheckMax;
      //postCheck = false;    
      hasInput = true;    
    }
  }
}