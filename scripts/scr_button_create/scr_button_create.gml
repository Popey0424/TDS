//function create buttons 
function button_create()
{
	with(instance_create_layer(0,0,"layers_pause",obj_MainMenu_Pause))
	{
		_x = argument[0];
		_y = argument[1];
		_x2 = argument[2];
		_y2 = argument[3];
		_col1 = argument[4];
		_col2 = argument[5];
		_col3 = argument[6];
		_col4 = argument[7];
		_hovercol = argument[8];
		_clickcol = argument[9];
		_text = argument[10];
		_function = argument[11];
		
		_colprev = col1;
		_txtx = _x +((_x2-_x)/2);
		_txty = _y +((_y2-_y)/2);
	}
}

