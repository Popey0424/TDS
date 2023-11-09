var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if (pause){
	if(!surface_exists(pause_surf)){
		instance_deactivate_all(true)
		pause_surf = surface_create(gui_w, gui_h);
		button_create(0,224,208,256,c_dkgray,#dbdbdb,c_red,"Main Menu", button_destroy_all);
		surface_set_target(pause_surf);
		//draw_surface(application_surface, 0,0)
		surface_reset_target();
		
	}else{
		//draw_surface(pause_surf, 0, 0);
		//draw_set_alpha(0.5)
		//draw_rectangle_color(0,0,gui_w,gui_h,c_black, c_black,c_black,c_black,false);
	}
}else{
	instance_activate_all()	
	
	//surface_free(pause_surf)
	//pause_surf = -1;
}
//draw_set_font(fnt_text)
//	draw_set_halign(fa_center)
//	draw_set_alpha(.8);
//	draw_set_color(c_black);
//	button_create(0,224,208,256,c_dkgray,#dbdbdb,c_red,"Main Menu", button_destroy_all);