//////////////////////
// START MENU //
//////////////////////
if obj_control_main.gameMode.rpg.mode == "startMenu"
{
	//////////////
	// ITEMS //
	/////////////
	for (var i = 0; i < array_length(arrayInventoryMenu); i++)
	{
		for (var j = 0; j < array_length(arrayInventoryMenu[0]); j++)
		{
			//get item per row and column
			var item = arrayInventoryMenu[i][j][0]
			//no item
			if item == "EMPTY"
			{
				arrayInventoryMenu[i][j][1] = 0 //amount
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_empty //sprite
				arrayInventoryMenu[i][j][3] = "No item." //description
				arrayInventoryMenu[i][j][4] = "NONE" //type
			}
			//shield
			else if item == "SHIELD"
			{
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_shield
				arrayInventoryMenu[i][j][3] = "Creates an alternating pulse shield that absorbs one hit."
				arrayInventoryMenu[i][j][4] = "POWERUP"
			}
			//power shot
			else if item == "POWER"
			{
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_power
				arrayInventoryMenu[i][j][3] = "Fires a increased frequency plasma bolt."
				arrayInventoryMenu[i][j][4] = "POWERUP"
			}			
			//spread shot
			else if item == "SPREAD"
			{
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_spread
				arrayInventoryMenu[i][j][3] = "Fires three balls of magnetically contained plasma at once in a spread pattern."
				arrayInventoryMenu[i][j][4] = "POWERUP"
			}
			//bomblets
			else if item == "BOMB"
			{
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_bomb
				arrayInventoryMenu[i][j][3] = "Creates a micro-anti-matter bomblet that destabilizes on impact."
				arrayInventoryMenu[i][j][4] = "POWERUP"
			}		
			//chainsaw
			else if item == "SAW"
			{
				arrayInventoryMenu[i][j][2] = spr_ui_menu_start_item_chainsaw
				arrayInventoryMenu[i][j][3] = "A chainsaw and physical shield that protects Momo while being used."
				arrayInventoryMenu[i][j][4] = "POWERUP"
			}			
		}
	}
	///////////////////////
	// QUEST ITEMS //
	//////////////////////
	for (var i = 0; i < array_length(arrayInventoryQuestMenu); i++)
	{
		for (var j = 0; j < array_length(arrayInventoryQuestMenu[0]); j++)
		{
			//get item per row and column
			var item = arrayInventoryQuestMenu[i][j][0]
			//no item
			if item == "EMPTY"
			{
				arrayInventoryQuestMenu[i][j][2] = spr_ui_menu_start_item_empty //sprite
				arrayInventoryQuestMenu[i][j][3] = "No item." //description
			}		
			else if item == "CASE"
			{
				arrayInventoryQuestMenu[i][j][2] = spr_ui_menu_start_quest_item_ammoCase //sprite
				arrayInventoryQuestMenu[i][j][3] = "A special ammo case that Migi wants you to take to Gun-L." //description
			}
		}
	}
	////////////////////
	// UPGRADES //
	///////////////////
	for (var i = 0; i < array_length(arrayUpgradeMenu); i++)
	{
		for (var j = 0; j < array_length(arrayUpgradeMenu[0]); j++)
		{
			var upgrade = arrayUpgradeMenu[i][j][0]
			if upgrade == "????"
			{
				arrayUpgradeMenu[i][j][1] = 0 //level
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_qmark //sprite
				arrayUpgradeMenu[i][j][3] = "????" //description
			}
			else if upgrade == "DASH"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_dash
				arrayUpgradeMenu[i][j][3] = "Increases Momo's dash speed."
			}
			else if upgrade == "AMMO"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_ammo
				arrayUpgradeMenu[i][j][3] = "Increases maximum amount of special ammo."
			}			
			else if upgrade == "STAB"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_stab
				arrayUpgradeMenu[i][j][3] = "Increases how many objects a shot can pass through."
			}				
			else if upgrade == "RATE"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_rate
				arrayUpgradeMenu[i][j][3] = "Increases fire rate."
			}		
			else if upgrade == "GRAB"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_grab
				arrayUpgradeMenu[i][j][3] = "Increases maximum number of capture balls."
			}		
			//LINE BREAK
			else if upgrade == "LIFE"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_momos
				arrayUpgradeMenu[i][j][3] = "Increases maximum lives."
			}		
			else if upgrade == "MARU"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_maru
				arrayUpgradeMenu[i][j][3] = "Increases the variety of objects that Maru might bring you."
			}					
			else if upgrade == "BEAM"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_beam
				arrayUpgradeMenu[i][j][3] = "Increases improves the efficiency of the super beam attack."
			}		
			else if upgrade == "LIMIT"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_limit
				arrayUpgradeMenu[i][j][3] = "Increases the effectiveness when Momo goes berzerk."
			}				
			else if upgrade == "LUCK"
			{
				arrayUpgradeMenu[i][j][2] = spr_ui_menu_start_upgrade_luck
				arrayUpgradeMenu[i][j][3] = "Increases the likelyhood of any positive random event."
			}
		}
	}
	///////////////
	// ABILITY //
	///////////////
	for (var i = 0; i < array_length(arrayAbilityMenu); i++)
	{
		for (var j = 0; j < array_length(arrayAbilityMenu[0]); j++)
		{
			var upgrade = arrayAbilityMenu[i][j][0]
			if upgrade == "????"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_upgrade_qmark //sprite
				arrayAbilityMenu[i][j][3] = "????" //description
				arrayAbilityMenu[i][j][5] = "????"
			}
			else if upgrade == "DASH"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_dash
				arrayAbilityMenu[i][j][3] = "Allows Momo to fly faster while holding RUN."
				arrayAbilityMenu[i][j][5] = "Speed, for lack of a better word, is good."
			}
			else if upgrade == "SCAN"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_scan
				arrayAbilityMenu[i][j][3] = "Scans new enemies and bosses in SHMUP and OMNI stages."
				arrayAbilityMenu[i][j][5] = "They've scanned us! EVADE! EVADE!"
			}			
			else if upgrade == "STAB"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_stab
				arrayAbilityMenu[i][j][3] = "Allows Momo to fire a normal shot that can pierce through walls and enemies."
				arrayAbilityMenu[i][j][5] = "If you pull the trigger on this, you are ruining someone's day, somewhere and sometime."
			}			
			else if upgrade == "MULTI"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_double
				arrayAbilityMenu[i][j][3] = "Momo can hold two powerups at once."
				arrayAbilityMenu[i][j][5] = "Wow! Your Momo lets you have TWO powerups!?"
			}	
			else if upgrade == "GRAB"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_grab
				arrayAbilityMenu[i][j][3] = "Allows Momo to fire a capture ball that makes some enemies fight along side her. If they don't join, they are destroyed. (This damages bosses)"
				arrayAbilityMenu[i][j][5] =  "All the times we fought, were together as one."
			}	
			//LINE BREAK
			else if upgrade == "SUPER"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_super
				arrayAbilityMenu[i][j][3] = "Allows Momo to use a consumeable super weapon."
				arrayAbilityMenu[i][j][5] = "The number one rule of warfare: If brute force doesn't work, you're not using enough of it."
			}	
			else if upgrade == "MARU"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_maru
				arrayAbilityMenu[i][j][3] = "From time to time, Mysterious Maru will appear, helping Momo in some way."
				arrayAbilityMenu[i][j][5] = "I'm sometimes here when you need me the most."
			}	
			else if upgrade == "BEAM"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_beam
				arrayAbilityMenu[i][j][3] = "Momo can charge and fire a mega-laser that uses all of her special ammo."
				arrayAbilityMenu[i][j][5] = "Etch your name into your enemies."
			}	
			else if upgrade == "LIMIT"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_limit
				arrayAbilityMenu[i][j][3] = "If Momo has no lives left, sometimes she will regain a life and go temporarily berserk."
				arrayAbilityMenu[i][j][5] = "All play and no lives make Momo go... something something."
				//EVEN IN DEATH I STILL BERSERK
			}		
			else if upgrade == "7777"
			{
				arrayAbilityMenu[i][j][2] = spr_ui_menu_start_ability_7777
				arrayAbilityMenu[i][j][3] = "If Momo's credits equal 7777, she will activate ALL LUCKY 7S."
				arrayAbilityMenu[i][j][5] = "Survival can be a matter of luck or skill. And you can’t rely on luck."
				//arrayAbilityMenu[i][j][5] = "Does she have four 7s or only three? Do you feel lucky? Well do you, punk?"
			}		
		}
	}
}

