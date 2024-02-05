depth = -9000

with creator
{
	if distance_to_object(obj_rpg_character_momo) < 24
	{
		other.visible = true
	}
	if distance_to_object(obj_rpg_character_momo) >= 24 or obj_rpg_character_momo.mode == "talk"
	{
		other.visible = false
	}
}
if sprite_index == spr_textBubble_quest and obj_rpg_character_momo.mode != "talk"
{
	visible = true
}