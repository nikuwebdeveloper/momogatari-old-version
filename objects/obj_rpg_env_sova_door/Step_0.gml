depth = -y - sprite_height
image_index = frame;
if distance_to_object(obj_rpg_character_momo) < 16 //open
{
	if frame > 0
	{
		if timer == timerMax
		{
			timer = 0;
			frame--;
		}
		else
		{
			timer++;
		}
	}
}
else
{
	if frame < image_number -1
	{
		if timer == timerMax
		{
			timer = 0;
			frame++;
		}
		else
		{
			timer++;
		}
	}
}