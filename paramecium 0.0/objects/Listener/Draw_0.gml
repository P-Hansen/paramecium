/// @description Insert description here
// You can write your code in this editor
if(gameOverFlag == true){
	draw_set_font(font1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "Extinction");
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	draw_set_font(-1);
}