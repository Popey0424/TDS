/// @description create hole
// You can write your code in this editor

<<<<<<< HEAD


=======
<<<<<<< Updated upstream
=======
>>>>>>> parent of 8f69dd6 (enemy et collision)
obj_player.sprite_index = spr_player_attack_right
>>>>>>> Stashed changes

if(can_shoot == true)
	{
		if (tire == 1 ) 
		{
			instance_create_layer(obj_zone_collision.x , obj_zone_collision.y , "Instances_trou", obj_trou01);
	
			can_shoot = false;
	
			alarm_set(0, 60);
		}
		
		if (tire == 2)
		{
			instance_create_layer(obj_zone_collision.x , obj_zone_collision.y, "Instances_trou", obj_trou02);
	
			can_shoot = false;
	
			alarm_set(0, 60);
		}
		
		if (tire == 3)
		{
			instance_create_layer(obj_zone_collision.x , obj_zone_collision.y, "Instances_trou", obj_trou03);
	
			can_shoot = false;
	
			alarm_set(0, 60);
		}
	}