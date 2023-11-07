if(__dnd_lives <= 0)
{
	global.pscore += 10;
	global.pcombo += 1;
	instance_destroy()
	obj_player.__dnd_lives +=1
}
else if (__dnd_lives >= 0)
{
	__dnd_lives -= 1;
}
