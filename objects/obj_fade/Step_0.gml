/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (state == 0)

{timer++; 
	
	if (timer >= duration) {
		room_goto_next();
		
		state = 1;
	}
	
}

else if (state == 1) {
	
timer--;

if (timer <= 0) {
	instance_destroy();
}

}

alpha = timer/duration;