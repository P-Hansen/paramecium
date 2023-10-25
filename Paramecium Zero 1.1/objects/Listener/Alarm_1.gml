/// @description Game over

alarm[1] = 5*room_speed;
if(!instance_exists(parameciumBreederWhite) &&
	!instance_exists(parameciumBreederGreenBrooding) &&
	!instance_exists(parameciumBreederYellow) &&
	!instance_exists(parameciumBreederShell) &&
	!instance_exists(parameciumBreeder3Tails) &&
	!instance_exists(parameciumBreederBlue) &&
	!instance_exists(parameciumBreederSpiked) &&
	!instance_exists(parameciumBreederToxic) &&
	!instance_exists(parameciumBreederVacuum) &&
	!instance_exists(parameciumBreederSlime) &&
	!instance_exists(parameciumBreederToxicSpiter) &&
	!instance_exists(parameciumBreeder2Tails) &&
	!instance_exists(parameciumBreederRed) &&
	!instance_exists(parameciumBreederDigester))
	{
	if(instance_exists(parameciumBreederGreen)){
		with(parameciumBreederGreen){
			instance_destroy(self);
		}
	}
	if(instance_exists(parameciumBreederGreenSpikes)){
		with(parameciumBreederGreenSpikes){
			instance_destroy(self);
		}
	}
	if(instance_exists(famine)){
		with(famine){
			active = false;
			alarm[0] = 1*room_speed;
		}
	}
	gameOverFlag = true;
	global.points = 5;
	instance_create_depth(room_width/2, room_height/2,0,parameciumBreederWhite);
	alarm[2] = 10*room_speed;
	}

