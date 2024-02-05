inv_ability_shmup = 
{
	sprint : false,
	captureBall : false,
	doubleSpecial : false,
	super : false,
	laser : false,
	maru : false,
	scanner : false,
	charge : false,
	limit : false,
	allLucky7s: false
}
inv_stats_shmup = 
{
	ammo : 0,
	ammoMax : 25,
	fireRateMax : 1,
	livesMax : 3,
	captureBallMax : -1,	
}

itemFound = false

////////////////////////////////
// NORMAL INVENTORY //
////////////////////////////////

// [x][x][0] - class of item
arrayInventoryMenu[0][0][0] = "EMPTY"
arrayInventoryMenu[0][1][0] = "EMPTY"
arrayInventoryMenu[0][2][0] = "EMPTY"
arrayInventoryMenu[0][3][0] = "EMPTY"
arrayInventoryMenu[0][4][0] = "EMPTY"

arrayInventoryMenu[1][0][0] = "EMPTY"
arrayInventoryMenu[1][1][0] = "EMPTY"
arrayInventoryMenu[1][2][0] = "EMPTY"
arrayInventoryMenu[1][3][0] = "EMPTY"
arrayInventoryMenu[1][4][0] = "EMPTY"

arrayInventoryMenu[2][0][0] = "EMPTY"
arrayInventoryMenu[2][1][0] = "EMPTY"
arrayInventoryMenu[2][2][0] = "EMPTY"
arrayInventoryMenu[2][3][0] = "EMPTY"
arrayInventoryMenu[2][4][0] = "EMPTY"

// [x][x][1] - how many of item
arrayInventoryMenu[0][0][1] = 0
arrayInventoryMenu[0][1][1] = 0
arrayInventoryMenu[0][2][1] = 0
arrayInventoryMenu[0][3][1] = 0
arrayInventoryMenu[0][4][1] = 0

arrayInventoryMenu[1][0][1] = 0
arrayInventoryMenu[1][1][1] = 0
arrayInventoryMenu[1][2][1] = 0
arrayInventoryMenu[1][3][1] = 0
arrayInventoryMenu[1][4][1] = 0

arrayInventoryMenu[2][0][1] = 0
arrayInventoryMenu[2][1][1] = 0
arrayInventoryMenu[2][2][1] = 0
arrayInventoryMenu[2][3][1] = 0
arrayInventoryMenu[2][4][1] = 0

// [x][x][2] - item sprite
arrayInventoryMenu[0][0][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[0][1][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[0][2][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[0][3][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[0][4][2] = spr_ui_menu_start_item_empty

arrayInventoryMenu[1][0][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[1][1][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[1][2][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[1][3][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[1][4][2] = spr_ui_menu_start_item_empty

arrayInventoryMenu[2][0][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[2][1][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[2][2][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[2][3][2] = spr_ui_menu_start_item_empty
arrayInventoryMenu[2][4][2] = spr_ui_menu_start_item_empty

// [x][x][3] - description of item
arrayInventoryMenu[0][0][3] =  "none"
arrayInventoryMenu[0][1][3] =  "none"
arrayInventoryMenu[0][2][3] =  "none"
arrayInventoryMenu[0][3][3] =  "none"
arrayInventoryMenu[0][4][3] =  "none"

arrayInventoryMenu[1][0][3] =  "none"
arrayInventoryMenu[1][1][3] =  "none"
arrayInventoryMenu[1][2][3] =  "none"
arrayInventoryMenu[1][3][3] =  "none"
arrayInventoryMenu[1][4][3] =  "none"

arrayInventoryMenu[2][0][3] =  "none"
arrayInventoryMenu[2][1][3] =  "none"
arrayInventoryMenu[2][2][3] =  "none"
arrayInventoryMenu[2][3][3] =  "none"
arrayInventoryMenu[2][4][3] =  "none"

// // [x][x][4] - type of item, powerup, super, etc.
arrayInventoryMenu[0][0][4] = "none"
arrayInventoryMenu[0][1][4] =  "none"
arrayInventoryMenu[0][2][4] =  "none"
arrayInventoryMenu[0][3][4] =  "none"
arrayInventoryMenu[0][4][4] =  "none"

arrayInventoryMenu[1][0][4] =  "none"
arrayInventoryMenu[1][1][4] =  "none"
arrayInventoryMenu[1][2][4] =  "none"
arrayInventoryMenu[1][3][4] =  "none"
arrayInventoryMenu[1][4][4] =  "none"

arrayInventoryMenu[2][0][4] =  "none"
arrayInventoryMenu[2][1][4] =  "none"
arrayInventoryMenu[2][2][4] =  "none"
arrayInventoryMenu[2][3][4] =  "none"
arrayInventoryMenu[2][4][4] =  "none"

//////////////////////////////
// QUEST INVENTORY //
/////////////////////////////

// [x][x][0] - class of item
arrayInventoryQuestMenu[0][0][0] = "EMPTY"
arrayInventoryQuestMenu[0][1][0] = "EMPTY"
arrayInventoryQuestMenu[0][2][0] = "EMPTY"
arrayInventoryQuestMenu[0][3][0] = "EMPTY"
arrayInventoryQuestMenu[0][4][0] = "EMPTY"

arrayInventoryQuestMenu[1][0][0] = "EMPTY"
arrayInventoryQuestMenu[1][1][0] = "EMPTY"
arrayInventoryQuestMenu[1][2][0] = "EMPTY"
arrayInventoryQuestMenu[1][3][0] = "EMPTY"
arrayInventoryQuestMenu[1][4][0] = "EMPTY"

arrayInventoryQuestMenu[2][0][0] = "EMPTY"
arrayInventoryQuestMenu[2][1][0] = "EMPTY"
arrayInventoryQuestMenu[2][2][0] = "EMPTY"
arrayInventoryQuestMenu[2][3][0] = "EMPTY"
arrayInventoryQuestMenu[2][4][0] = "EMPTY"

// [x][x][2] - item sprite
arrayInventoryQuestMenu[0][0][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[0][1][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[0][2][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[0][3][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[0][4][2] = spr_ui_menu_start_item_empty

arrayInventoryQuestMenu[1][0][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[1][1][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[1][2][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[1][3][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[1][4][2] = spr_ui_menu_start_item_empty

arrayInventoryQuestMenu[2][0][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[2][1][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[2][2][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[2][3][2] = spr_ui_menu_start_item_empty
arrayInventoryQuestMenu[2][4][2] = spr_ui_menu_start_item_empty

// [x][x][3] - description of item
arrayInventoryQuestMenu[0][0][3] =  "none"
arrayInventoryQuestMenu[0][1][3] =  "none"
arrayInventoryQuestMenu[0][2][3] =  "none"
arrayInventoryQuestMenu[0][3][3] =  "none"
arrayInventoryQuestMenu[0][4][3] =  "none"

arrayInventoryQuestMenu[1][0][3] =  "none"
arrayInventoryQuestMenu[1][1][3] =  "none"
arrayInventoryQuestMenu[1][2][3] =  "none"
arrayInventoryQuestMenu[1][3][3] =  "none"
arrayInventoryQuestMenu[1][4][3] =  "none"

arrayInventoryQuestMenu[2][0][3] =  "none"
arrayInventoryQuestMenu[2][1][3] =  "none"
arrayInventoryQuestMenu[2][2][3] =  "none"
arrayInventoryQuestMenu[2][3][3] =  "none"
arrayInventoryQuestMenu[2][4][3] =  "none"

////////////////////
// UPGRADES //
///////////////////

//upgrade names and their slots
arrayUpgradeSlot[0] = "DASH"
arrayUpgradeSlot[1] = "AMMO"
arrayUpgradeSlot[2] = "STAB"
arrayUpgradeSlot[3] = "RATE"
arrayUpgradeSlot[4] = "GRAB"

arrayUpgradeSlot[5] = "LIFE"
arrayUpgradeSlot[6] = "MARU"
arrayUpgradeSlot[7] = "BEAM"
arrayUpgradeSlot[8] = "LIMIT"
arrayUpgradeSlot[9] = "LUCK"

//upgrade descriptions
arrayUpgradeMenu[0][0][0] =  "????"
arrayUpgradeMenu[0][1][0] =  "????"
arrayUpgradeMenu[0][2][0] =  "????"
arrayUpgradeMenu[0][3][0] =  "????"
arrayUpgradeMenu[0][4][0] =  "????"

arrayUpgradeMenu[1][0][0] =  "????"
arrayUpgradeMenu[1][1][0] =  "????"
arrayUpgradeMenu[1][2][0] =  "????"
arrayUpgradeMenu[1][3][0] =  "????"
arrayUpgradeMenu[1][4][0] =  "????"

//level of upgrade
arrayUpgradeMenu[0][0][1] = 0
arrayUpgradeMenu[0][1][1] = 0
arrayUpgradeMenu[0][2][1] = 0
arrayUpgradeMenu[0][3][1] = 0
arrayUpgradeMenu[0][4][1] = 0

arrayUpgradeMenu[1][0][1] = 0
arrayUpgradeMenu[1][1][1] = 0
arrayUpgradeMenu[1][2][1] = 0
arrayUpgradeMenu[1][3][1] = 0
arrayUpgradeMenu[1][4][1] = 0

//sprites for upgrade
arrayUpgradeMenu[0][0][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[0][1][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[0][2][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[0][3][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[0][4][2] = spr_ui_menu_start_item_empty

arrayUpgradeMenu[1][0][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[1][1][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[1][2][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[1][3][2] = spr_ui_menu_start_item_empty
arrayUpgradeMenu[1][4][2] = spr_ui_menu_start_item_empty

// description of upgrade
arrayUpgradeMenu[0][0][3] =  "none"
arrayUpgradeMenu[0][1][3] =  "none"
arrayUpgradeMenu[0][2][3] =  "none"
arrayUpgradeMenu[0][3][3] =  "none"
arrayUpgradeMenu[0][4][3] =  "none"

arrayUpgradeMenu[1][0][3] =  "none"
arrayUpgradeMenu[1][1][3] =  "none"
arrayUpgradeMenu[1][2][3] =  "none"
arrayUpgradeMenu[1][3][3] =  "none"
arrayUpgradeMenu[1][4][3] =  "none"

/////////////////
// ABILITIES //
/////////////////

//names of abiliites and their slot
arrayAbilitySlot[0] = "DASH"
arrayAbilitySlot[1] = "SCAN"
arrayAbilitySlot[2] = "STAB"
arrayAbilitySlot[3] = "MULTI"
arrayAbilitySlot[4] = "GRAB"

arrayAbilitySlot[5] = "SUPER"
arrayAbilitySlot[6] = "MARU"
arrayAbilitySlot[7] = "BEAM"
arrayAbilitySlot[8] = "LIMIT"
arrayAbilitySlot[9] = "7777"

arrayAbilityMenu[0][0][0] =  "????"
arrayAbilityMenu[0][1][0] =  "????"
arrayAbilityMenu[0][2][0] =  "????"
arrayAbilityMenu[0][3][0] =  "????"
arrayAbilityMenu[0][4][0] =  "????"

arrayAbilityMenu[1][0][0] =  "????"
arrayAbilityMenu[1][1][0] =  "????"
arrayAbilityMenu[1][2][0] =  "????"
arrayAbilityMenu[1][3][0] =  "????"
arrayAbilityMenu[1][4][0] =  "????"

//ability sprites
arrayAbilityMenu[0][0][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[0][1][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[0][2][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[0][3][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[0][4][2] = spr_ui_menu_start_item_empty

arrayAbilityMenu[1][0][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[1][1][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[1][2][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[1][3][2] = spr_ui_menu_start_item_empty
arrayAbilityMenu[1][4][2] = spr_ui_menu_start_item_empty

//ability description
arrayAbilityMenu[0][0][3] =  "none"
arrayAbilityMenu[0][1][3] =  "none"
arrayAbilityMenu[0][2][3] =  "none"
arrayAbilityMenu[0][3][3] =  "none"
arrayAbilityMenu[0][4][3] =  "none"

arrayAbilityMenu[1][0][3] =  "none"
arrayAbilityMenu[1][1][3] =  "none"
arrayAbilityMenu[1][2][3] =  "none"
arrayAbilityMenu[1][3][3] =  "none"
arrayAbilityMenu[1][4][3] =  "none"

//ability quotes
arrayAbilityMenu[0][0][5] =  "none"
arrayAbilityMenu[0][1][5] =  "none"
arrayAbilityMenu[0][2][5] =  "none"
arrayAbilityMenu[0][3][5] =  "none"
arrayAbilityMenu[0][4][5] =  "none"

arrayAbilityMenu[1][0][5] =  "none"
arrayAbilityMenu[1][1][5] =  "none"
arrayAbilityMenu[1][2][5] =  "none"
arrayAbilityMenu[1][3][5] =  "none"
arrayAbilityMenu[1][4][5] =  "none"