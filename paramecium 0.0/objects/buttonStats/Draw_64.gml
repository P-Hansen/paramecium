/// @description Insert description here
// You can write your code in this editor

if (instance_exists(species)) {
	draw_rectangle_color(x,y,x+200,y+30,c_gray,c_gray,c_gray,c_gray,false);
	draw_text(x+5,y+5,species.name +" "+ string(instance_number(species)));
}