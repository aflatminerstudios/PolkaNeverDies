/// @description Insert description here
// You can write your code in this editor
var font = draw_get_font();
var hAlign = draw_get_halign();
var vAlign = draw_get_valign();
var color = draw_get_color();


draw_set_halign(fa_center);
draw_set_color(c_red);
draw_set_font(fntGameOverHeading);
draw_text(room_width/2, 50, "Game Over");

draw_set_font(fntGameOverSubheading);
draw_set_color(c_white);
if (objDataTransfer.won) {
  draw_text(room_width/2, 200, "You win!");
} else {
  draw_text(room_width/2, 200, "You lose!");
}

draw_set_font(fntGameOver);

draw_text(room_width/2, 300, "Score: " + string(objDataTransfer.points));
draw_text(room_width/2, 350, "Number of survivors: " + string(objDataTransfer.numSurvivors));


//Draw members of band
with (objDataTransfer) {
  var count = 0;
  while (livingMembers[count] != noone) {
    count++;
  }
 // show_debug_message("Count = " + string(count));
  var fullDist = 510;

  switch (count) {
    case 0:
      break;
    case 1:
      draw_sprite_ext(livingMembers[0], 0, room_width/2, 750, 0.7, 0.7, 0, c_white, 1); 
      
      break;
    case 2:
      draw_sprite_ext(livingMembers[0], 0, room_width/2 - fullDist/6, 750, 0.7, 0.7, 0, c_white, 1); 
      draw_sprite_ext(livingMembers[1], 0, room_width/2 + fullDist/6, 750, 0.7, 0.7, 0, c_white, 1); 
      break;
    case 3:
      draw_sprite_ext(livingMembers[0], 0, room_width/2 - fullDist/3, 750, 0.7, 0.7, 0, c_white, 1); 
      draw_sprite_ext(livingMembers[1], 0, room_width/2, 750, 0.7, 0.7, 0, c_white, 1); 
      draw_sprite_ext(livingMembers[2], 0, room_width/2 + fullDist/3, 750, 0.7, 0.7, 0, c_white, 1); 
      break;
    case 4:
      draw_sprite_ext(livingMembers[0], 0, room_width/2 - 3 * fullDist/6, 750, 0.7, 0.7, 0, c_white, 1); 
      draw_sprite_ext(livingMembers[1], 0, room_width/2 - fullDist/6, 750, 0.7, 0.7, 0, c_white, 1);  
      draw_sprite_ext(livingMembers[2], 0, room_width/2 + fullDist/6, 750, 0.7, 0.7, 0, c_white, 1); 
      draw_sprite_ext(livingMembers[3], 0, room_width/2 + 3*fullDist/6, 750, 0.7, 0.7, 0, c_white, 1); 
      break;
    default:
      show_debug_message("Wrong count: " + string(count));
      break;
  }
}




draw_set_font(font);
draw_set_halign(hAlign);
draw_set_valign(vAlign);
draw_set_color(color);

