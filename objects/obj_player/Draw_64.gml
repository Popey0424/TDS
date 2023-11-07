//faire apparaitre le score sur le cote gauche de l'HUD

draw_text(40, 20, "Score: " + string(global.pscore));
draw_text(40, 120, "COMBO: " + string(global.pcombo));

var l021D6509_0 = sprite_get_width(spr_life);
var l021D6509_1 = 1;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l021D6509_2 = __dnd_lives; l021D6509_2 > 0; --l021D6509_2) 
{
	draw_sprite(spr_life, 0, 0 + l021D6509_1, 700);
	l021D6509_1 += l021D6509_0;
}




//afficher l'objet narratif 01

if (f==1)
{
	instance_create_layer(x,y,"Instances_Character",obj_stop_player);
    
    if (page_object = 0)

    {
		
        draw_sprite(spr_livre_ouvert,image_index,500,200);


        }

    if (page_object = 1)

    {
        draw_sprite(spr_livre_page01, image_index,500,200);
       

        }

        if (page_object = 2)

    {
        draw_sprite(spr_livre_page02, image_index,500,200);
   
        }
		
		   if (page_object = 3)

    {
        draw_sprite(spr_livre_page03, image_index,500,200);

        }
		
			   if (page_object = 4)

    {
        draw_sprite(spr_livre_ferme, image_index,500,200);
   
        }


    if (page_object = 5)

    {
      
        
		f = 0;
		page_object = 0;
		instance_destroy(obj_stop_player);
		
			}
}