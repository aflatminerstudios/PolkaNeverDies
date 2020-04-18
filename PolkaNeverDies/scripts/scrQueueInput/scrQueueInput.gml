/// @func scrQueueInput(which)
/// @desc takes in input and queues it for the next measure
/// @param which The input value

var which = argument0;

if (which != " ") {
  
  with (objBeatBuffer) {
    ds_list_add(commands, which);
  }
  show_debug_message("Queuing " + which);
  scrEmptyBuffer();
}