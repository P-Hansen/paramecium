/// @description Insert description here
// You can write your code in this editor
if (instance_exists(species)) {
	draw_self();
	//draw_rectangle_color(x,y,x+200,y+30,colour,colour,colour,colour,false);
	draw_text(x+15,y+5,species.name +" "+ string(instance_number(species)));
} else {
	if (deleted == false) {
		alarm[0] = 2;
		deleted = true;
	}
}