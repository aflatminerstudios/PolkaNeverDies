/// @description Draw heads and arrows
// You can write your code in this editor


//Trombone (Up)
draw_sprite_ext(sprArrowKey, 0, 900, 25 + sprite_get_height(sprArrowKey), 1, 1, 90, c_white, 1);
draw_sprite(sprTromboneHead, 0, 800, 25);

//Tuba (left)
draw_sprite_ext(sprArrowKey, 0, 900 + sprite_get_width(sprArrowKey), 75 + sprite_get_height(sprArrowKey), 1, 1, 180, c_white, 1);
draw_sprite(sprTubaHead, 0, 800, 75);

//Drum (Down)
draw_sprite_ext(sprArrowKey, 0, 900 + sprite_get_width(sprArrowKey), 125, 1, 1, 270, c_white, 1);
draw_sprite(sprDrumHead, 0, 800, 125);

//Accordion (Right)
draw_sprite_ext(sprArrowKey, 0, 900, 175, 1, 1, 0, c_white, 1);
draw_sprite(sprAccordionHead, 0, 800, 175);