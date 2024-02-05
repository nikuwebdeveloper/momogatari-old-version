function func_quest_num(questNum)
{
	var control = obj_control_rpg_quest
	switch questNum
	{
		case 0:
			return control.quest_0
		case 1:
			return control.quest_1
		case 2: 
			return control.quest_2
		case 3: 
			return control.quest_3
		case 4: 
			return control.quest_4
		case 5:
			return control.quest_5
		case -1:
			return control.noQuest
	}
}
function func_quest_message_complete()
{
	with (obj_control_ui) //find last page
	{
		toggleActiveQuest = true
		popupStyle = spr_ui_rpg_popup_questComplete
		popupTimer = 60*3
	}
}
function func_quest_message_upgrade_get()
{
	with (obj_control_ui) //find last page
	{
		toggleActiveQuest = true
		popupStyle = spr_ui_rpg_popup_upgrade_get
		popupTimer = 60*3
	}
}

function func_quest_message_ability_get()
{
	with (obj_control_ui) //find last page
	{
		toggleActiveQuest = true
		popupStyle = spr_ui_rpg_popup_ability_get
		popupTimer = 60*3
	}
}

function func_quest_message_itemGet(type)
{
	with (obj_control_ui) //find last page
	{
		if type == "quest"
		{
			popupStyleItem = spr_ui_rpg_popup_itemQuest_get
		}
		popupTimer = 60*3
	}
}

function func_quest_message_itemRemove(type)
{
	with (obj_control_ui) //find last page
	{
		if type == "quest"
		{
			popupStyleItem = spr_ui_rpg_popup_itemQuest_remove
		}
		popupTimer = 60*3
	}
}