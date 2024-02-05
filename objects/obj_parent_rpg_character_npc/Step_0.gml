// Inherit the parent event
event_inherited();
if isMoving // set reach and walking sprites if moving
{
	switch (dir) 
	{
	    case "up":
			sprite_index = sprites.walkUp
			xReach = 0
			yReach = -16
	    break;
		case "right":
			sprite_index = sprites.walkRight
			xReach = 16
			yReach = 0
	    break;
		case "down":
			sprite_index = sprites.walkDown
			xReach = 0
			yReach = 16
	    break;
		case "left":
			sprite_index = sprites.walkLeft
			xReach = -16
			yReach = 0
	    break;
	}
}
else // set idle frame if standing still
{
	sprite_index = sprites.idle
	switch (dir) 
	{
	    case "up":
			image_index = 0
	    break;
		case "right":
			image_index = 1
	    break;
		case "down":
			image_index = 2
	    break;
		case "left":
			image_index = 3
	    break;
	}
}
if turnToPlayer //if NPC turns to face player
{
	if instance_exists(obj_rpg_character_momo)
	{
		if obj_rpg_character_momo.mode == "talk" and obj_rpg_character_momo.interactTarget == id //if momo is talking to someone and if her target is this NPC
		{
			switch (obj_rpg_character_momo.dir) //set NPC to face opposite direction to face momo
			{
			    case "up":
					image_index = 2
			    break;
				case "right":
					image_index = 3
			    break;
				case "down":
					image_index = 0
			    break;
				case "left":
					image_index = 1
			    break;
			}
		}
		else if !isMoving // prevents NPC from being stuck when moving
		{ 
			dir = dirInit //set initial direction
		}
	}
}
if isMoving // if moving
{
	var hMove = (xReach/16) * spWalk //gets a 1, 0, or -1 value to get walking running speed
	var vMove = (yReach/16) * spWalk
	if moveStyle == "random" //random walking
	{
		if timerMoveRandom == timerMoveRandomMax //timer
		{
			timerMoveRandom = 0 //reset
			var rand = irandom_range(0,3) //random direction
			switch (rand)  //set random direction
			{
			    case 0:
					dir = "up"
			    break;
				case 1:
					dir = "right"
			    break;
				case 2:
					dir = "down"
			    break;
				case 3:
					dir = "left"
			    break;
			}
		}
		else
		{
			timerMoveRandom++
		}
	}
	if !place_meeting(x+hMove, y+vMove, obj_parent_rpg_solid) and toggleMove == 1 //not hitting a solid object
	{
		toggleMove= 0
		x += hMove
		y += vMove
	}
	else if !place_meeting(x+hMove, y+vMove, obj_parent_rpg_solid) and toggleMove == 0
	{
		toggleMove = 1
	} //not hitting a solid object
	else //hit a solid object
	{
		var rand = irandom_range(0,2) //three random directions that don't repeat the same direction
		if dir == "up"
		{
			switch (rand)  //set random direction without up
			{
				case 0:
					dir = "right"
				break;
				case 1:
					dir = "down"
				break;
				case 2:
					dir = "left"
				break;
			}
		}
		else if dir == "right"
		{
			switch (rand)  //set random direction without right
			{
				case 0:
					dir = "up"
				break;
				case 1:
					dir = "down"
				break;
				case 2:
					dir = "left"
				break;
			}
		}
		else if dir == "down"
		{
			switch (rand)  //set random direction without down
			{
				case 0:
					dir = "up"
				break;
				case 1:
					dir = "right"
				break;
				case 2:
					dir = "left"
				break;
			}
		}
		else if dir == "left"
		{
			switch (rand)  //set random direction without left
			{
				case 0:
					dir = "up"
				break;
				case 1:
					dir = "down"
				break;
				case 2:
					dir = "right"
				break;
			}
		}			
	}
}
//last page manager
if obj_control_main.gameMode.rpg.mode == "gameplay"
{
	if questGiver
	{	
		var questData = func_quest_num(obj_control_rpg_quest.currentQuestNum)
		//you are the quest giver
		if questData.questGiverNPC.id == id
		{
			lastPage = array_length(questTextArray[obj_control_rpg_quest.currentQuestNum])-1
		}
		//fix doesn't seem to do anything
		////FIX. CHECK IF CURRENT QUEST FOR THIS GIVER
		//for (var i = 0; i < array_length(questArray); i++)
		//{
		//	if questArray[i] == true
		//	{
		//		if i == obj_control_rpg_quest.currentQuestNum
		//		{
		//			questMode = true
		//			break
		//		}
		//	}
		//}
		//turn off quest if currentQuest is no quest
		if obj_control_rpg_quest.currentQuestNum == -1
		{
			questMode = false
		}
		if questMode
		{
			
		}
		else
		{
			lastPage = array_length(normalTextArray[0])-1
		}
	}
	else
	{
		if specialQuestText
		{
		//	lastPage = array_length(specialQuestTextArray[obj_control_rpg_quest.currentQuestNum])-1
			lastPage = array_length(specialQuestTextArray[0])-1
		}
		else
		{
			lastPage = array_length(normalTextArray[0])-1
		}
	}
}