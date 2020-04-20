/// @description Insert description here
// You can write your code in this editor

if (!postCheck && objBeat.activeMeasure) {
 /* postCount = 0;
  preCount++;
  show_debug_message("Pre check " + string(preCount) + "   ======================");*/
  //Get what is about to move off buffer
  var top = buffer[0];
  
  //Moves everything down buffer by 1
  for (var i = 0; i < bufferSize-1; ++i) {  
    buffer[i] = buffer[i + 1]; 
  }


  //Don't process bad input more than once
  if (!badInput) {
    
    //Fill buffer with input if appropriate
    buffer[bufferSize - 1] = scrCheckInput();
    
    /* //Uncomment to print buffer
    var s = "";
    for (var i = 0; i < bufferSize -1; ++i) {
      s = s + " : " + buffer[i]; 
    }

    show_debug_message(s);
    */

    //If something came off the end of the buffer, it is invalid
    if (top != " ") {
      badInput = true;
      //Add bad to set invalid
      badString = "bad" + top;    
      scrQueueInput(badString);
      show_debug_message(badString);
      //Uncomment to print buffer
    var s = "";
    for (var i = 0; i < bufferSize -1; ++i) {
      s = s + " : " + buffer[i]; 
    }

    show_debug_message(s);
    }

  }

}
if (postCheck) {   
  /*preCount = 0;
  postCount++;
  show_debug_message("Post check " + string(postCount) + "   -----------------");*/
  //If in post-check, check for input  
  postCheckCount += 1;  
  
  if (postCheckCount > postCheckMax) {    
    
    if (ds_list_size(objBeatBuffer.commands) != (objBeat.curBeat + 1)){
      scrQueueInput("miss"); 
    }
    
    //At the end of postcheck, check if buffer matches number of beats
    //This lets you process inputs JUST after the last beat of measure and still get credit
    if (ds_list_size(objBeatBuffer.commands) == objBeat.measure){
      //Treat as if on measure
      var action = scrCheckRecipes();     

      if (action != " ") {
        while (ds_list_size(objBeatBuffer.commands) > 0) {
          ds_list_delete(objBeatBuffer.commands,0); 
        }
        scrTakeAction(action);
      }
     }
    //End post check
    postCheckCount = 0;
    postCheck = false;
    hasInput = false;
  } else {
    //Get input and if valid, go to end of post check
    var input = scrCheckInput();
    if (input != " " && !hasInput) {
      scrQueueInput(input);
      
      postCheckCount = postCheckMax;      
      hasInput = true;    
    }
  }
}