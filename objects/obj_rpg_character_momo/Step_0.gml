event_inherited();
if dir == "up"
{
	xReach = 0;
	yReach = -8;
	sprite_index = spr_rpg_momo_walk_up;
}
else if dir == "down"
{
	xReach = 0;
	yReach = 8;
	sprite_index = spr_rpg_momo_walk_down;
}
else if dir == "left"
{
	xReach = -8;
	yReach = 0;
	sprite_index = spr_rpg_momo_walk_left;
}
else if dir == "right"
{
	xReach = 8;
	yReach = 0;
	sprite_index = spr_rpg_momo_walk_right;
}

//run
if obj_control_input.run_hold
{
	sp = 2;
	image_speed = 2;
}
else
{
	sp = 1;
	image_speed = 1;
}
if obj_control_main.gameMode.rpg.mode == "gameplay"
{
	if mode != "talk"
	{
		if obj_control_input.up_hold // actual x and y movement
		{
			dir = "up";
			if !place_meeting(x,y-sp,obj_parent_rpg_solid)
			{
				y = y - sp;
			}
		}
		else if obj_control_input.down_hold
		{
			dir = "down";
			if !place_meeting(x,y+sp,obj_parent_rpg_solid)
			{
				y = y + sp;
			}
		}
		if obj_control_input.left_hold
		{
			dir = "left";
			if !place_meeting(x-sp,y,obj_parent_rpg_solid)
			{
				x = x - sp;
			}
		}
		else if obj_control_input.right_hold
		{
			dir = "right";
			if !place_meeting(x+sp,y,obj_parent_rpg_solid)
			{
				x = x + sp;
			}
		}
	}
}
