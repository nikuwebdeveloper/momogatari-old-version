if x == xprevious and y == yprevious //if momo is still
{
	sprite_index = spr_rpg_momo_idle;
	if dir == "up"
	{
		image_index = 0;
	}
	else if dir == "down"
	{
		image_index = 2;
	}
	else if dir == "left"
	{
		image_index = 3;
	}
	else if dir == "right"
	{
		image_index = 1;
	} 
}