/// @desc scrResizeBuffer(size)
/// @param size New size of the input buffer

var size = argument0;

with (objInputControl) {
  bufferSize = size;
  
  scrEmptyBuffer();
}