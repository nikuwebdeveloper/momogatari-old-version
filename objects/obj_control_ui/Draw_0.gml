//////////////////////
// GAMEPLAY
//////////////////////
if obj_control_main.gameMode.rpg.mode == "gameplay"
{
	if popupTimer > 0
	{
		draw_sprite(popupStyle,0,xCenter,yCenter-100)
		draw_sprite(popupStyleItem,0,xCenter,yCenter+15)
	}
	else
	{
		popupStyle = spr_empty
		popupStyleItem = spr_empty
	}
	if displayTarget != noone
	{
		var yy = y + obj_control_camera.cameraHeight - (diagBoxHeight) //top left of where textbox should be
		draw_sprite(spr_ui_diagbox,0, x, yy) //draw textbox
		func_text(x+12, yy + 48, displayTarget.data.name, 6) //draw name
		if !displayTarget.questMode
		{
			if displayTarget.specialQuestText
			{
				//draw special quest text
				func_text(x+64, yy+8, displayTarget.specialQuestTextArray[obj_control_rpg_quest.currentQuestNum][displayTarget.currentPage],40)
			}
			else
			{
				//draw normal quest text
				func_text(x+64, yy+8, displayTarget.normalTextArray[0][displayTarget.currentPage],40)
			}
		}
		else if displayTarget.questMode
		{
			func_text(x+64, yy+8, displayTarget.questTextArray[obj_control_rpg_quest.currentQuestNum][displayTarget.currentPage],40) //draw QUEST text
		}
		func_text(x+286+8, yy+64+7, string(displayTarget.currentPage+1) + "/" + string(displayTarget.lastPage+1),10) //draw numbers
		draw_sprite(displayTarget.data.portrait, 0, x + 8, yy + 8) //draw portrait
		if popupTimer > 0
		{
			if popupStyle == "questComplete" //quest finished
			{
				draw_sprite(spr_ui_rpg_popup_questComplete,0,xCenter,yCenter) //popup for new quest
			}
			else if popupStyle == "questNew" //quest started
			{
				draw_sprite(spr_ui_rpg_popup_questNew,0,xCenter,yCenter) //popup for new quest
			}
		}
	}
	iconActive.visible = false
}
//////////////////////
// START MENU
//////////////////////
else if obj_control_main.gameMode.rpg.mode == "startMenu"
{
	var cursor = 0
	//change main cursor color
	if startMenu.mainMenu 
	{
		cursor = spr_ui_menu_start_cursor //light cursor
	}
	else
	{
		cursor = spr_ui_menu_start_cursor_used //dark cursor
	}
	if startMenu.mainMenu
	{
		draw_sprite(spr_ui_menu_start,7, x, y)//draw empty main menu
	}
	else
	{
		if pageQuest
		{
			draw_sprite(spr_ui_menu_start,8, x, y)//draw main menu
		}
		else
		{
			draw_sprite(spr_ui_menu_start,startMenu.pageNum, x, y)
		}
	}
	//items, abilities, quests, etc slots
	if startMenu.cursorMainPosNum < 5 
	{
		draw_sprite(cursor, startMenu.pageNum, x+5, y - 5 + 48 + (24*startMenu.cursorMainPosNum))
	}
	 //options and system slots
	else
	{
		//has to shift down for gap
		draw_sprite(cursor,startMenu.pageNum, x+5, y - 5 + 72 + (24*startMenu.cursorMainPosNum))
	}
	 //in sub menu
	if !startMenu.mainMenu
	{
		if startMenu.pageNum != 1
		{
			iconActive.visible = false
		}
		//which sub menu you're in
		switch (startMenu.pageNum) 
		{
			//////////////////////
			// ITEMS
			//////////////////////
		    case 0: 
				//normal items
				var arrayInventory = obj_control_inventory.arrayInventoryMenu
				//on quest page
				if pageQuest
				{
					//switch out array for quest items
					arrayInventory = obj_control_inventory.arrayInventoryQuestMenu
				}
				//go through by column and row
				for (var i = 0; i < array_length(arrayInventory); i++)
				{
					for (var j = 0; j < array_length(arrayInventory[0]); j++)
					{
						draw_sprite(arrayInventory[i][j][2],0,x+74+(51*j),y+42+(48*i)) //sprite
						func_text(x+77+(51*j), y+77+(48*i), arrayInventory[i][j][0], 10) //name
						if pageNormal
						{
							func_text(x+100+(51*j), y+68+(48*i), arrayInventory[i][j][1], 10) //amount
						}
					}
				}
				func_text(x+80, y+196, arrayInventory[vPos][hPos][3],36)//description
				if pageNormal
				{
					func_text(x+115, y+186, arrayInventory[vPos][hPos][4],10) //type
				}
				draw_sprite(spr_ui_menu_cursor_peach,0,x+74+(hPos*51),y+40+(vPos*48)) //cursor
		        break;
			//////////////////////
			// QUESTS
			//////////////////////
		    case 1:
				if obj_control_rpg_quest.currentQuestNum != -1
				{
					iconActive.visible = true
					iconActive.x = x + 156
					iconActive.y = y + 63 + (38* obj_control_rpg_quest.currentQuestNum)
				}
				else
				{
					iconActive.visible = false
				}
				var questData = func_quest_num(startMenu.cursorSubPosNum) //quest
				var textComplete = "INCOMPLETE" //temp
				var textDiscovered = "???" //temp
				if questData.discovered //if quest is discovered
				{
					textDiscovered = questData.description
				}
				func_text(x + 176, y + 50+10, textDiscovered, 22) //quest description
				if questData.complete //if quest is finished
				{
					textComplete = "COMPLETE"
				}
				func_text(x + 184+3, y + 224-6, "STATUS : " + textComplete, 22) //quest complete/incomplete
				
				var xx = x+84 //quest title positions
				var yy = y+52
				for (var i = 0; i < startMenu.cursorSubPosMax+1; i++)
				{
					var questSlot  = func_quest_num(i)
					if !questSlot.discovered
					{
						func_text(xx, yy + (38*i), "???", 15) //quest name slot 0
					}
					else
					{
						func_text(xx, yy + (38*i),questSlot.title, 15) //quest name slot 0
					}
					if questSlot.complete
					{
						draw_sprite(spr_ui_menu_check,startMenu.pageNum, x + 148+2, yy - 2 + (38*i))
					}
				}
				//draw peach cursor
				draw_sprite(spr_ui_menu_cursor_peach,0,x+74,y+40+(startMenu.cursorSubPosNum*38)) //cursor
		        break;
			//////////////////////
			// UPGRADES
			//////////////////////
		    case 2:
				var arrayUpgrade = obj_control_inventory.arrayUpgradeMenu
				for (var i = 0; i < array_length(arrayUpgrade); i++)
				{
					for (var j = 0; j < array_length(arrayUpgrade[0]); j++)
					{
						draw_sprite(arrayUpgrade[i][j][2],0,x+74+(51*j),y+42+(48*i)) //sprite
						func_text(x+77+(51*j), y+77+(48*i), arrayUpgrade[i][j][0], 10) //name
						func_text(x+100+(51*j), y+68+(48*i), arrayUpgrade[i][j][1], 10) //amount
						draw_sprite(L, 0, x+100-6+(51*j),y+68+(48*i))
					}
				}
				func_text(x+80, y+149, arrayUpgrade[vPos][hPos][3],36)//description
				func_text(x+80, y+149+75-8+4,"LEVEL : " + string(arrayUpgrade[vPos][hPos][1]),10)//description
				draw_sprite(spr_ui_menu_cursor_peach,0,x+74+(hPos*51),y+40+(vPos*48)) //cursor
		        break;
			//////////////////////
			// ABILITIES
			//////////////////////
		    case 3:
				var arrayAbility = obj_control_inventory.arrayAbilityMenu
				for (var i = 0; i < array_length(arrayAbility); i++)
				{
					for (var j = 0; j < array_length(arrayAbility[0]); j++)
					{
						draw_sprite(arrayAbility[i][j][2],0,x+74+(51*j),y+42+(48*i)) //sprite
						func_text(x+77+(51*j), y+77+(48*i), arrayAbility[i][j][0], 10) //name
					}
				}
				func_text(x+80, y+149, arrayAbility[vPos][hPos][3],36)//description
				func_text(x+80, y+149+50,"\"" + string(arrayAbility[vPos][hPos][5],36) + "\"",36) //quote
				draw_sprite(spr_ui_menu_cursor_peach,0,x+74+(hPos*51),y+40+(vPos*48)) //cursor
		        break;
		    case 4:
				
		        break;
		    case 5:
				
		        break;
		    case 6:
				
		        break;
		}
	} 
}