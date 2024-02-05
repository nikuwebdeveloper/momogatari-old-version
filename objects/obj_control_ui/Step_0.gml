var momo = obj_rpg_character_momo
xCenter = x + camera_get_view_width(view_camera[0])/2
yCenter = y + camera_get_view_height(view_camera[0])/2
if popupTimer > 0 //popup for quests count down
{
	popupTimer--
}
if obj_control_main.gameMode.rpg.mode == "gameplay"
{
	obj_ui_menu_start_bg_black.visible = false //turn off start menu background
	if instance_exists(obj_ui_menu_meteor_small) //clear start menu meteors
	{
		instance_destroy(obj_ui_menu_meteor_small)
	}
	if obj_control_input.start_press //turn on start menu
	{
		obj_control_main.gameMode.rpg.mode = "startMenu" //change game mode to menu
	}
	//momo code
	if obj_control_input.interact_press
	{
		with momo
		{
			interactTarget = instance_place(x + xReach,y + yReach,obj_parent_rpg_character_npc) //find actor to talk to
			other.displayTarget = interactTarget //give target to control ui
		}
		if instance_exists(displayTarget)
		{
			if momo.mode != "talk" //momo first talk page
			{
				if displayTarget.currentPage == 0
				{
					displayTarget.isMoving = false
					momo.mode = "talk"
				}
			}
			else if momo.mode == "talk"
			{			
				if displayTarget.currentPage < displayTarget.lastPage
				{
					displayTarget.currentPage++
				}
				else if displayTarget.currentPage == displayTarget.lastPage
				{
					if displayTarget.moveStyle == "random"
					{
						displayTarget.isMoving = true //reset to keep moving
					}
					obj_control_ui.textArrayType = "normal"
					momo.mode = "none"//reset
					displayTarget.currentPage = 0 //reset
					displayTarget.lastPage = 0//reset
					displayTarget = noone//reset
					momo.interactTarget = noone//reset
					obj_control_ui.popupTimer = 0//reset
				}
			}
		}
	}
}
else if obj_control_main.gameMode.rpg.mode == "startMenu"
{
	if obj_control_input.start_press //turn off start menu
	{
		obj_control_main.gameMode.rpg.mode = "gameplay" //reset
		startMenu.cursorMainPosNum = 0 //reset
		startMenu.pageNum = 0 //reset
		startMenu.mainMenu = true //reset
	}
	if startMenu.mainMenu
	{
		if startMenu.cursorMainPosNum < startMenu.cursorMainPosMax //go up in start menu 
		{
			if obj_control_input.down_press
			{
				startMenu.cursorMainPosNum++
			}
		}
		if startMenu.cursorMainPosNum > 0 //go down in start menu
		{
			if obj_control_input.up_press
			{
				startMenu.cursorMainPosNum--
			}
		}
		if obj_control_input.interact_press //go into sub menu
		{
			startMenu.pageNum = startMenu.cursorMainPosNum
			startMenu.mainMenu = false
		}
	}
	else //in submenu
	{
		if obj_control_input.select_press //go back
		{
			startMenu.mainMenu = true
			startMenu.cursorSubPosNum = 0 //reset
			hPos = 0
			vPos = 0
			startMenu.cursorSubPosNum = 0
			pageQuest = false
			pageNormal = true
		}
		switch (startMenu.pageNum) 
		{
		    case 0: //items
				if pageNormal
				{
					if obj_control_input.shoulder_right_press
					{
						hPos = 0
						vPos = 0
						startMenu.cursorSubPosNum = 0
						pageQuest = true
						pageNormal = false
					}
				}
				else if pageQuest
				{
					if obj_control_input.shoulder_left_press
					{
						hPos = 0
						vPos = 0
						startMenu.cursorSubPosNum = 0
						pageQuest = false
						pageNormal = true
					}
				}
				if obj_control_input.down_press
				{
					if vPos < 2
					{
						vPos++
					}
				}
				else if obj_control_input.up_press
				{
					if vPos > 0
					{
						vPos--
					}
				}
				else if obj_control_input.left_press
				{
					if hPos > 0
					{
						hPos--
					}
				}
				else if obj_control_input.right_press
				{
					if hPos < 4
					{
						hPos++
					}
				}
				for (var i = 0; i < array_length(arrayCursor); i++)
				{
					for (var j = 0; j < array_length(arrayCursor[0]); j++)
					{
						arrayCursor[i][j] = false
					}
				}
				arrayCursor[hPos][vPos] = true
		        break;
		    case 1: //quests
				//sub menu controls
				if startMenu.cursorSubPosNum < startMenu.cursorSubPosMax //go up in start menu 
				{
					if obj_control_input.down_press
					{
						startMenu.cursorSubPosNum++
					}
				}
				startMenu.cursorSubPosMax = 4
		        break;
		    case 2: //upgrades
				if obj_control_input.down_press
				{
					if vPos < 1
					{
						vPos++
					}
				}
				else if obj_control_input.up_press
				{
					if vPos > 0
					{
						vPos--
					}
				}
				else if obj_control_input.left_press
				{
					if hPos > 0
					{
						hPos--
					}
				}
				else if obj_control_input.right_press
				{
					if hPos < 4
					{
						hPos++
					}
				}
				for (var i = 0; i < array_length(arrayCursor); i++)
				{
					for (var j = 0; j < array_length(arrayCursor[0]); j++)
					{
						arrayCursor[i][j] = false
					}
				}
				arrayCursor[hPos][vPos] = true
		        break;
		    case 3:
				if obj_control_input.down_press
				{
					if vPos < 1
					{
						vPos++
					}
				}
				else if obj_control_input.up_press
				{
					if vPos > 0
					{
						vPos--
					}
				}
				else if obj_control_input.left_press
				{
					if hPos > 0
					{
						hPos--
					}
				}
				else if obj_control_input.right_press
				{
					if hPos < 4
					{
						hPos++
					}
				}
				for (var i = 0; i < array_length(arrayCursor); i++)
				{
					for (var j = 0; j < array_length(arrayCursor[0]); j++)
					{
						arrayCursor[i][j] = false
					}
				}
				arrayCursor[hPos][vPos] = true
		        break;
		    case 4:
				
		        break;
		    case 5:
				
		        break;
		    case 6:
				
		        break;
		}

		//start menu controls
		if startMenu.cursorSubPosNum > 0 //go down in start menu
		{
			if obj_control_input.up_press
			{
				startMenu.cursorSubPosNum--
			}
		}		
		if obj_control_input.interact_press
		{
			var questData = func_quest_num(startMenu.cursorSubPosNum)
			if  !questData.complete and questData.discovered
			{
				//choose same quest to turn off
				if obj_control_rpg_quest.currentQuestNum == startMenu.cursorSubPosNum
				{
					//save state of quest once quest is turned off and reload it once the quest is turned back on
					obj_control_rpg_quest.currentQuestNum = -1
				}
				//choose different quest to switch to
				else
				{
					if questResetSwitch
					{
						questResetSwitch = false
						obj_control_rpg_quest.currentQuestNum = -1
					}
				}
			}
		}
		if !questResetSwitch
		{
			//show_message(obj_control_rpg_quest.currentQuestNum)
			questResetSwitch = true
			obj_control_rpg_quest.currentQuestNum = startMenu.cursorSubPosNum
			//show_message(obj_control_rpg_quest.currentQuestNum)
		}			
	}
	obj_ui_menu_start_bg_black.visible = true //set background to be black
	var xRand = irandom_range(x, x+320) //top of screen
	var yRand = irandom_range(y, y+240) //side of screen
	if meteorTimer == meteorTimerMax //background meteor timers
	{
		var randDir = irandom_range(0,1) //chose top or right side of screen
		meteorTimer = 0 //reset 
		if randDir == 0
		{
			instance_create_depth(x+xRand, y, depth+1, obj_ui_menu_meteor_small) //top side
		}
		else if randDir == 1
		{
			instance_create_depth(x+320, y+yRand, depth+1, obj_ui_menu_meteor_small) //right side
		}
	}
	else
	{
		meteorTimer++
	}
}