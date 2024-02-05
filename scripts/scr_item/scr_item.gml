function func_item_add(type, itemName, amount)
{
	with obj_control_inventory
	{
		var arrayInv = 0
		if type == "normal"
		{
			arrayInv = arrayInventoryMenu
		}
		else if type == "quest"
		{
			arrayInv = arrayInventoryQuestMenu
		}
		for (var i = 0; i < array_length(arrayInv); i++)
		{
			for (var j = 0; j < array_length(arrayInv[0]); j++)
			{
				if type == "normal"
				{
					var item = arrayInv[i][j][0] //current loop item
					if itemName == item // if argument item is same as current loop item
					{
						arrayInv[i][j][1] += amount //just add the amount to that item
						itemFound = true
						//add if more than 9, convert to money
						break
					}
				}
				if i == array_length(arrayInv) and j == array_length(arrayInv[0]) //last one
				{
					itemFound = false
				}
			}
		}
		var breakOuterLoop = false
		if !itemFound
		{
			for (var i = 0; i < array_length(arrayInv); i++)
			{
				for (var j = 0; j < array_length(arrayInv[0]); j++)
				{
					var item = arrayInv[i][j][0] //current loop item
					if item == "EMPTY" // if argument item is same as current loop item
					{
						arrayInv[i][j][0] = itemName
						if type == "normal"
						{
							arrayInv[i][j][1] += amount
						}
						breakOuterLoop = true
						break
					}
				}
				if breakOuterLoop
				{
					break
				}
			}
		}
	}
}
function func_item_remove(type, itemName, amount)
{
	with obj_control_inventory
	{
		var arrayInv = 0
		if type == "normal"
		{
			arrayInv = arrayInventoryMenu
		}
		else if type == "quest"
		{
			arrayInv = arrayInventoryQuestMenu
		}
		for (var i = 0; i < array_length(arrayInv); i++)
		{
			for (var j = 0; j < array_length(arrayInv[0]); j++)
			{
				var item = arrayInv[i][j][0] //current loop item
				if itemName == item // if argument item is same as current loop item
				{
					if type == "normal"
					{
						arrayInv[i][j][1] -= amount //just add the amount to that item
					}
					else if type == "quest"
					{
						arrayInv[i][j][0] = "EMPTY"
					}
					itemFound = true
					//add if more than 9, convert to money
					break
				}
				if i == array_length(arrayInv) and j == array_length(arrayInv[0]) //last one
				{
					itemFound = false
				}
			}
		}
		//var breakOuterLoop = false
		//if !itemFound
		//{
		//	break //???
			//for (var i = 0; i < array_length(arrayInv); i++)
			//{
			//	for (var j = 0; j < array_length(arrayInv[0]); j++)
			//	{
			//		var item = arrayInv[i][j][0] //current loop item
			//		if item == "EMPTY" // if argument item is same as current loop item
			//		{
			//			arrayInv[i][j][0] = itemName
			//			arrayInv[i][j][1] += amount
			//			breakOuterLoop = true
			//			break
			//		}
			//	}
			//	if breakOuterLoop
			//	{
			//		break
			//	}
			//}
		//}
	}
}
function func_upgrade_add(upgradeName)
{
	with obj_control_inventory
	{
		for (var i = 0; i < 5; i++)
		{
			if arrayUpgradeSlot[i] == upgradeName
			{
				arrayUpgradeMenu[0][i][0] = upgradeName
				break
			}
		}
		for (var i = 5; i < 9; i++)
		{
			if arrayUpgradeSlot[i] == upgradeName
			{
				arrayUpgradeMenu[1][i][0] = upgradeName
				break
			}
		}
	}
}