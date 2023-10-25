/// @description Insert description here
// You can write your code in this editor
//draw_rectangle_color(((room_width+300)/2)-150,(room_height/2)-200,((room_width+300)/2)+150,(room_height/2)+200,c_white,c_white,c_white,c_white,false);
//draw_self();
draw_set_colour(c_black);
draw_text(x+50, y+200, "Speed " + string(global.whiteSpeed));

draw_text(x+50, y+250, "Hp " + string(global.whiteHp));
draw_text(x+50, y+300, "Range " + string(global.whiteRange));
draw_set_colour(c_white);

