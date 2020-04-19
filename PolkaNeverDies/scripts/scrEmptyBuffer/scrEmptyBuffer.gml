/// @func scrEmptyBuffer()
/// @desc empties input buffer

with (objInputControl) {
  for (var i = 0; i < bufferSize; ++i) {
    buffer[i] = " "; 
  } 
}