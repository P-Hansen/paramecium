corals = instance_create_depth(random_range(0,room_width), random_range(0,room_height),0, choose(coral,stringOfPearls,ropeFronds));
corals.alarm[0] = 100*room_speed;