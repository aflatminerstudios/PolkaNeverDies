/// @description Insert description here
// You can write your code in this editor


draw_text_transformed(200, 100, "GAME OVER", 10, 10, 0);

if (objDataTransfer.won) {
  draw_text_transformed(300, 300, "You win!", 4, 4, 0);
} else {
  draw_text_transformed(300, 300, "You lose!", 4, 4, 0);
}

draw_text(200, 400, "Score: " + string(objDataTransfer.points));
draw_text(200, 500, "Number of survivors: " + string(objDataTransfer.numSurvivors));