/// @func scrGameOver(isWin)
/// @param isWin Did they win

var isWin = argument0;

if (isWin) {
  show_message("You win!");
  
} else {
  show_message("You lose!");
}

room_restart();