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
      show_debug_message(top + " - off beat");  
      badInput = true;
      badString = top;    
    
    }

  }

} else {
  
  postCheckCount += 1;
  if (postCheckCount > postCheckMax) {
    postCheckCount = 0;
    postCheck = false;
  } else {
     var input = scrCheckInput();
     if (input != " ") {
      scrQueueInput(input);
      postCheckCount = 0;
      postCheck = false;
      show_debug_message("Correct in post");
     }     
  }
}