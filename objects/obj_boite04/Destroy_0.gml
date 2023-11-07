/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(global.puzzle01_answer) == ds_list_size(global.puzzle01))
{
	answer = ds_list_write(global.puzzle01_answer)
	puzzle = ds_list_write(global.puzzle01)
	if (answer == puzzle)
	{
		instance_destroy(obj_trou01)
		instance_create_layer(x, y, "Instances_Character", obj_cuve)
	}
	else if (answer != puzzle)
	{
		instance_create_layer(x,y+128*9, "Instances_Colision", obj_boite01)
		instance_create_layer(x,y+128*6, "Instances_Colision", obj_boite02)
		instance_create_layer(x,y+128*3, "Instances_Colision", obj_boite03)
		instance_create_layer(x,y, "Instances_Colision", obj_boite04)
		instance_destroy(obj_trou01)
		ds_list_clear(global.puzzle01_answer)
	}
	
}

else if (ds_list_size(global.puzzle01_answer) != ds_list_size(global.puzzle01))
{
	instance_create_layer(x,y+128*9, "Instances_Colision", obj_boite01)
	instance_create_layer(x,y+128*6, "Instances_Colision", obj_boite02)
	instance_create_layer(x,y+128*3, "Instances_Colision", obj_boite03)
	instance_create_layer(x,y, "Instances_Colision", obj_boite04)
	instance_destroy(obj_trou01)
	ds_list_clear(global.puzzle01_answer)
}