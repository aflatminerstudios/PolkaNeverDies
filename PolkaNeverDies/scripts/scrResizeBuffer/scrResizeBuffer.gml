/// @func scrResizeBuffer(size)
/// @desc Resize buffer to size
/// @param size The size to reszie to

var size = argument0;

with (objInputControl) {
  
  bufferSize = size;
  
  for (var i = 0; i < bufferSize; ++i) {
    buffer[i] = " "; 
  } 
}