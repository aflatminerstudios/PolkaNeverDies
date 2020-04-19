/// @func scrBeatHandleInput()
/// @desc Handles user input on the beat

with (objInputControl) {
  
/*//Uncomment to print buffer to output
var s = "";
for (var i = 0; i < bufferSize -1; ++i) {
  s = s + " : " + buffer[i]; 
}

show_debug_message(s);
*/

  if (!badInput) {
  
    var i = bufferSize - 1;
    //Finds the last input that was placed in the buffer
    while (buffer[i] == " " && i > 0) {
      i--;
    }
  
    //If there was any input
    if (i > 0) {
    
      //Check to make sure all input was the same
      var j = 0;        
      while (j < bufferSize - 1) {                  
         //There was previous input that didn't match
         if (buffer[j] != " " && buffer[j] != buffer[i]) {      
          //Create 'bad' input string by prepending the word 'bad'
          scrQueueInput("bad" + buffer[j]);
          scrEmptyBuffer();
          badInput = true;
          return;
         }
         j++;
      } 
      //All clear, valid input exists
      scrQueueInput(buffer[i]);    
      
    }    
    badInput = false;
  } else {
    //Resets as there is currently no bad input queued
    badInput = false; 
    badString = " ";    
  }
  
  //Go into post-processing to catch user input
  postCheck = true; 
}
    
scrEmptyBuffer();