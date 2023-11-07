// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_snap_angle(){
	if (image_angle < 45)
	{
		image_angle = 0
	}
	else if (image_angle >= 45)
	{
		image_angle = 90
	}
	else if (image_angle < 135)
	{
		image_angle = 90
	}
	else if (image_angle >= 225)
	{
		image_angle = 270
	}
	else if (image_angle < 315)
	{
		image_angle = 270
	}
	else if (image_angle >= 315)
	{
		image_angle = 0
	}
	
}