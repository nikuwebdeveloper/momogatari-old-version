if obj_control_main.gameMode.rpg.mode == "gameplay"
{
	//draw_sprite(spr_ui_rpg_questActive,0,4,4)
	if obj_control_rpg_quest.currentQuestNum == -1
	{
		text = "No Quest"
	}
	else if obj_control_rpg_quest.currentQuestNum != -1
	{
		var textData = func_quest_num(obj_control_rpg_quest.currentQuestNum)
		text = textData.title
	}
	draw_set_color(c_black)
	draw_text(8+1,8,text)
	draw_text(8,8+1,text)
	draw_text(8,8-1,text)
	draw_text(8-1,8,text)
	if text == "No Quest"
	{
		draw_set_color(c_gray)
	}
	else
	{
		draw_set_color(c_white)
	}
	draw_text(8,8,text)
}