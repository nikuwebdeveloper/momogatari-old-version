var playerTarget = obj_rpg_character_momo.interactTarget
var npcParent = obj_parent_rpg_character_npc
var momo = obj_rpg_character_momo

with obj_rpg_npc_migi
{
	show_debug_message(questMode)
}
////////////////////
// TEXT BUBBLES
////////////////////
#region
with npcParent //with all NPCs
{
	if questGiver //with only the quest giver npcs
	{
		for (var i = 0; i < array_length(questArray); i++)
		{
			if questArray[i] // quest giver has a remaining quest
			{
				var questData = func_quest_num(i)
				textBubble.visible = true
				if other.currentQuestNum == -1 //momo doesn't have a current quest
				{
					if questData.discovered
					{
						textBubble.sprite_index = spr_textBubble_quest_gray
					}
					else
					{
						textBubble.sprite_index = spr_textBubble_quest
					}
				}
				else if other.currentQuestNum != -1 //momo has a current quest
				{
					for (var j = 0; j < array_length(questArray); j++) //check other quests
					{
						if questArray[j] 
						{
							if j == i and other.currentQuestNum == i
							{
								textBubble.sprite_index = spr_textBubble_quest_gray
							}
							else
							{
								textBubble.sprite_index = spr_textBubble_quest_gray
							}
						}
					}
				}
				break
			}
			//no more quests remaining
			else
			{
				textBubble.sprite_index = spr_textBubble_speech
			}
		}
	}
}
#endregion
#region
////////////////////
// GET NEW QUEST
////////////////////
if instance_exists(playerTarget) //talking to someone
{
	if playerTarget.questGiver
	{
		for (var i = 0; i < array_length(playerTarget.questArray); i++)
		{
			if playerTarget.questArray[i] // i is true AKA questgiver has this quest number 
			{
				var questData = func_quest_num(i)
				var questDataQuestGiver = questData.questGiverNPC
				var questDataComplete = questData.complete
				var questDataDiscovered = questData.discovered
				var questDataDiscoverable = questData.discoverable
				//set current quest to first new quest
				if questDataDiscoverable and !questDataDiscovered and !questDataComplete 
				{			
					if toggleNextQuest
					{
						toggleNextQuest = false
						currentQuestNum = i //sets current quest
						questData.discovered = true
						questData.discoverable = false
						questData.questActive = true
						//questData.questGiverNPC.currentQuestTextGroup = i
						questData.questGiverNPC.questMode = true
						with (obj_control_ui) //find last page
						{
							toggleActiveQuest = true
							popupStyle = spr_ui_rpg_popup_questNew
							popupTimer = 60*3
						}
						break
					}
				}
			}
		}
	}
}
else
{
	if currentQuestNum == -1
	{
		toggleNextQuest = true
	}
}

////////////////////
// QUEST STEPS
////////////////////
if currentQuestNum == -1
{
	with(obj_parent_rpg_character_npc)
	{
		specialQuestText = false
		questMode = false
	}
}
else if currentQuestNum == 0
{
	obj_rpg_npc_migi.id.specialQuestText = true
	var questData = func_quest_num(currentQuestNum)
	switch (questData.questStep)
	{
		//initial
		case 0:
		with obj_rpg_npc_robot
		{
			questTextArray[other.currentQuestNum][0] = "Momo, I want you to TALK to MIGI and then come back to me."
			questTextArray[other.currentQuestNum][1] = "He is nearby. You will find him easily. He has something for me."
			questData.questStep++
		}
		case 1:
			//initial step to let quest giver finish talking before next step
			if questData.questGiverNPC.currentPage == questData.questGiverNPC.lastPage and obj_control_input.interact_press
			{
				questData.questStep++
			}
			break
	    case 2:
			//talk to Migi, get item from Migi

			obj_rpg_npc_migi.id.specialQuestTextArray[currentQuestNum][0] = "Hi Momo. Gun-L sent you? He wanted me to give you something. Here."
			obj_rpg_npc_migi.id.specialQuestTextArray[currentQuestNum][1] = "It's an ammo case. He'll show you how to use it."
	        if momo.interactTarget == obj_rpg_npc_migi.id
			{
				//for specific page (second page)
				if momo.interactTarget.currentPage == 0 and obj_control_input.interact_press
				{
					func_quest_message_itemGet("quest")
					func_item_add("quest","CASE",0)
				}
				if momo.interactTarget.currentPage == momo.interactTarget.lastPage and obj_control_input.interact_press
				{
					questData.questStep++
				}
			}
	        break
	    case 3:
			//talk to robot again
			questData.questGiverNPC.questTextArray[currentQuestNum][0] = "Thank you Momo. This is an ammo case that will increase your maximum special ammo. I'll attach this to your suit."
			questData.questGiverNPC.questTextArray[currentQuestNum][1] = "Use it well. Shoot many things."
			questData.questGiverNPC.questTextArray[currentQuestNum][2] = "Your equipment can make use of a few more of these so seek them out."
			if momo.interactTarget == questData.questGiverNPC.id
			{
				//reset all special quest text
				//with(obj_parent_rpg_character_npc)
				//{
				//	specialQuestText = false
				//}
				if momo.interactTarget.currentPage == 1 and obj_control_input.interact_press
				{
					func_quest_message_upgrade_get()
					func_upgrade_add("AMMO")
				}
				if momo.interactTarget.currentPage == momo.interactTarget.lastPage and obj_control_input.interact_press
				{
					func_quest_message_complete()
					questData.questStep++
				}
			}
	        break;
	    case 4:
	        questData.complete = true
			questData.questActive = false
			questData.questGiverNPC.questArray[currentQuestNum] = false
			if obj_control_input.interact_press
			{
				questData.questGiverNPC.questMode = false
				currentQuestNum = -1
			}
	        break;						
	}
}
#endregion