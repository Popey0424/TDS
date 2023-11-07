
if(global.pause) exit;

walk_spd = 10

if (global.facing == 0) && (keyboard_check(vk_nokey))
{
	sprite_index = spr_player_idle;
}

if (global.facing == 1) && (keyboard_check(vk_nokey))
{
	image_xscale=-1;
}

reset_variables();

get_input();


//le joueur ne bouge plus si l'objet stop est présent

if (instance_exists(obj_stop_player)) 
{
	//do nothing
	}
else
{
calc_movement();
}


//le joueur peut bouger s'il appuie de nouveau sur f près d'un objet interactif

if ((instance_exists(obj_stop_player)) and f=0) 
{
instance_destroy(obj_stop_player);
}



//interaction avec l'objet narratif01

if f=1

{

if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object = page_object+1;
} 


if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object = page_object-1;}

  
  
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object<0)
{
  	f = 0;
	page_object = 0;
}

}




