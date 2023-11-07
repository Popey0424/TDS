if(keyboard_check(ord("P")))
{
	if(room != RoomPause)
	{
		if (instance_exists(obj_player))
		{
			obj_player.persistent = false;
			isPause = true;
			instance_activate_all()
		}
	room_previous(room)
	room_goto(RoomPause);
	}
	else 
	{
		room_goto_previous();
		instance_deactivate_all(true);
	}
		
}