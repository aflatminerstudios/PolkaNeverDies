////////////HANDLE USER INPUT///////////////////

//Finds last buffer element that wasn't empty
with (objInputControl) {
  
/*//Print Buffer
var s = "";
for (var i = 0; i < bufferSize -1; ++i) {
  s = s + " : " + buffer[i]; 
}

show_debug_message(s);
*/

  if (!badInput) {
  
    var i = bufferSize - 1;
    //Then finds the last input
    while (buffer[i] == " " && i > 0) {
      i--;
    }
  
    //If there was any input
    if (i > 0) {
    
      var j = 0;        
      while (j < bufferSize - 1) {                  
         //There was previous input that didn't match
         if (buffer[j] != " " && buffer[j] != buffer[i]) {
          //show_debug_message(buffer[j] + " - Off Beat because interaction"); 
          scrQueueInput("bad" + buffer[j]);
          scrEmptyBuffer();
          return;
         }
         j++;
      } 
      //All clear, valid input exists
      scrQueueInput(buffer[i]);    
      
    }

  } else {
    badInput = false; 
    badString = " ";    
  }
    
  postCheck = true; 
}
    
scrEmptyBuffer();