// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ejecter()
{
	if (other.x <= x-128) 
	{
		other.x = x - (sprite_width/2 + 384)
	}
	
	else if (other.x >= x+128)
	{
		other.x = x + (sprite_width/2 + 384)
	}

	else if (other.y <= y)
	{
		other.y = y - 128
	}

	else if (other.y > 128)
	{
		other.y = y + 256
	}

}