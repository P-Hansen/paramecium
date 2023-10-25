if i < 100
{
	x = x + random_range(-1,1);
	y = y + random_range(-1,1);
}
if i < 50
{
	x = x + random_range(-1,1);
	y = y + random_range(-1,1);
}
if i < 25
{
	x = x + random_range(-1,1);
	y = y + random_range(-1,1);
}

if i <= 0
{
	NewBranch = instance_create_layer(x,y,layer,Branch);
	NewBranch.image_angle = 0+random_range(-45,45);
	if(roll > 5){ NewBranch.image_index = 1;}
	NewBranch = instance_create_layer(x,y,layer,Branch);
	NewBranch.image_angle = 90+random_range(-45,45);
	if(roll > 5){ NewBranch.image_index = 1;}
	NewBranch = instance_create_layer(x,y,layer,Branch);
	NewBranch.image_angle = 180+random_range(-45,45);
	if(roll > 5){ NewBranch.image_index = 1;}
	NewBranch = instance_create_layer(x,y,layer,Branch);
	NewBranch.image_angle = 270+random_range(-45,45);
	if(roll > 5){ NewBranch.image_index = 1;}
	//audio_play_sound(WavCrack, 0, 0);
	//effect_create_above(ef_firework,x,y,0.5, c_yellow);
	instance_destroy();
}

Grow = irandom_range(0,2);

if Grow == 1
{
	i = i - 1;
	image_xscale = image_xscale+0.001;
	image_yscale = image_yscale+0.001;
}

if x < -10 direction = direction + 180;
if x > window_get_width()+10 direction = direction + 180;
if y < -10 direction = direction + 180;
if y > window_get_height()+10 direction = direction + 180;

if (hp <= 0)
{
	//audio_play_sound(WavShipExplosion, 0, 0);
	//effect_create_above(ef_firework,x,y,0.5, c_yellow);
	instance_destroy();
}