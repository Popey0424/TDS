if (distance_to_object(obj_player) < 897) 
{
    state = 1;
	
} 
else if (distance_to_object(obj_player) > 897)
{
    state = 0;
}

if (state == 1)
{
    move_towards_point(obj_player.x, obj_player.y, 3);
	if (obj_player > 768)
	{
		state = 0
		instance_create_layer(x+640, y+640, "Instance_trou", obj_trou_ennemies)
		alarm_set(0,30)
	}
}

if (state == 0)
{	
	move_towards_point(x, y, 0)
}


