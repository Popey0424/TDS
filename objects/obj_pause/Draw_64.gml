var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if(global.pause)
{
	 
	draw_set_alpha(.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,gui_w,gui_h,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_text);
	draw_text(gui_w/2,gui_h/2,"barigadam!");
	instance_create_layer(300,400, layers_pause,obj_button_options);
	
	
}
//if(layers_pause)
//{
//	instance_create_layer(x,y, layers_pause,obj_button_options);
//}