function reset_variables()
{
	left  = 0;
	right = 0;
	up    = 0;
	down  = 0;
}

function get_input()
{
	if(keyboard_check(ord("Q"))or keyboard_check(vk_left)) left = 1;
	if(keyboard_check(ord("D"))or keyboard_check(vk_right)) right = 1;
	if(keyboard_check(ord("Z"))or keyboard_check(vk_up)) up = 1;
	if(keyboard_check(ord("S"))or keyboard_check(vk_down)) down = 1;
	
	//if (keyboard_check(ord("Q")) || keyboard_check(ord("D")) || keyboard_check(ord("Z")) || keyboard_check(ord("S")))
	//{
	//	// Code pour jouer le son de pas ici
	//	audio_play_sound(Course, 1, false);
	//}
	
}

function calc_movement()
{
	var _hmove = right - left;  //creation d'une variable qui vas etre libere de la memoir a la fin de la braquette
	if(_hmove == -1)
	{
		sprite_index = spr_player_left;
		
	}
	else if (_hmove == 1)
	{
		sprite_index = spr_player_right
		
	}
	//if(mouse_check_button_pressed(ev_left_press))
	//{
		
	//}
	var _vmove = down - up;
							// aller a gauche right = 0 et left = -1 donc = -1 donc player vas a gauche 
								// si cas contraire right = 1 et left = 0 alors go droite 
	
	if(_hmove != 0 or _vmove != 0) // si je ne suis pas = 0 alors on se deplace donc on continue le script sinon je finis la braquette
	{
		var _dir = point_direction(0, 0, _hmove, _vmove);// sers pour enlever le bug des diagonales 
		_hmove = lengthdir_x(walk_spd, _dir);
		_vmove = lengthdir_y(walk_spd, _dir);
		
		x += _hmove;
		y += _vmove;
	}	
}