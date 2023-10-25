if WitherFlag == true
{
	hp = hp - MaxHp/200;
	image_xscale = (hp/MaxHp)/Generation;
	image_yscale = (hp/MaxHp)/Generation;
}

if hp <= 0
{
	//audio_play_sound(WavShipExplosion, 0, 0);
	//effect_create_above(ef_firework,x,y,0.5, c_yellow);
	//global.Score = global.Score + 1;
	instance_destroy();
}

if hp < MaxHp and image_blend != c_dkgray// and irandom_range(0,5) < 3// and instance_number(Branch) < 100
{
	hp = hp + MaxHp/400;
	image_xscale = (hp/MaxHp)/Generation;
	image_yscale = (hp/MaxHp)/Generation;
}

if image_blend == c_dkgray// and irandom_range(0,5) < 3
{
	//Hp = Hp - MaxHp/50;
}

if hp >= MaxHp and Branched == false
{
	if Generation < 4
	{
		NewBranch1 = instance_create_layer(x+lengthdir_x(-50/Generation,image_angle),y+lengthdir_y(-50/Generation,image_angle),"instances",Branch);
		NewBranch1.image_angle = image_angle + random_range(-90,0);
		NewBranch1.image_index = image_index;
		NewBranch1.Generation = Generation + 1;

		NewBranch2 = instance_create_layer(x+lengthdir_x(-50/Generation,image_angle),y+lengthdir_y(-50/Generation,image_angle),"instances",Branch);
		NewBranch2.image_angle = image_angle + random_range(0,90);
		NewBranch2.image_index = image_index;
		NewBranch2.Generation = Generation + 1;
	}
	/*
	if irandom_range(0,1) == 1
	{
		NewBranch = instance_create_layer(x+lengthdir_x(-50,image_angle),y+lengthdir_y(-50,image_angle),"instances",Branch);
		NewBranch.image_angle = image_angle;
	}*/
	
	image_blend = c_dkgray;
	
	Branched = true;
}