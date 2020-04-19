/// @func scrResizeBuffer(size)
/// @desc Resize buffer to size
/// @param size The new size

var size = argument0;

with (objInputControl) {
  //Set new size  
  bufferSize = size;
  
  //Fill buffer with spaces
  for (var i = 0; i < bufferSize; ++i) {
    buffer[i] = " "; 
  } 
}