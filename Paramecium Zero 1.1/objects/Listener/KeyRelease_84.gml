/// @description toxic waves
if(global.points >= 10){
	global.points = global.points - 10;
	instance_create_depth(0,0,0,toxicWaves);
}