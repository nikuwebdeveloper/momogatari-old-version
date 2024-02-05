event_inherited();
canTalk = true; // able to talk to
turnToPlayer = true //turns to player when speaking
dir = "down" //facing
dirInit = dir //for resetting the direction
xReach = 0
yReach = 16
shadow = "normal" //for size change
isMoving = false //is currently moving
canMove = false
moveStyle = "none"
spWalk = 1 //walk speed
timerMoveRandom = 0;
timerMoveRandomMax = 60
toggleMove = 0;
questGiver = false
questMode = false
questArray = [false,false,false,false,false,false,false,false,false,false]
//text pages
currentPage = 0
lastPage = 0

specialQuestText = false

normalTextArray[0][0] = "error text array"
questTextArray[0][0] = "error quest array"
specialQuestTextArray[0][0]="error special quest array"
currentNormalTextGroup = 0
currentQuestTextGroup = 0


image_index = 2 //face down
mask_index = spr_rpg_mask_16x24

if object_index == obj_rpg_npc_robot
{	
	normalTextArray[0][0]= "I was a robot built for war. Then I was repurposed for other tasks. But not for much longer."
	normalTextArray[0][1] = "The peace was short. I have many things to do."
	
	questGiver = true
	//quest 0
	questArray[0] = true
	//questTextArray[0][0] = "Momo, I want you to TALK to MIGI and then come back to me."
	//questTextArray[0][1] = "He is nearby. You will find him easily."
	
	turnToPlayer = true
	data =
	{
		name : "GUN-L",
		portrait : spr_portrait_robot,
		//currentArray : 0
	}
	sprites = 
	{
		walkUp : spr_rpg_npc_robot_idle,
		walkRight : spr_rpg_npc_robot_idle,
		walkDown : spr_rpg_npc_robot_idle,
		walkLeft : spr_rpg_npc_robot_idle,
		idle : spr_rpg_npc_robot_idle
	}
}
else if object_index == obj_rpg_npc_whiteSuit
{
	canMove = true
	normalTextArray[0][0]="Small ship, huh?"
	normalTextArray[0][1]="Smaller than the last one, huh?"
	
	specialQuestTextArray[0][0]="Did the robot send you?"
	data =
	{
		name : "WHITE SUIT",
		portrait : spr_portrait_blank,
		//currentArray : 0
	}
	sprites = 
	{
		walkUp : spr_npc_blank_walk_up,
		walkRight : spr_npc_blank_walk_right,
		walkDown : spr_npc_blank_walk_down,
		walkLeft : spr_npc_blank_walk_left,
		idle : spr_npc_blank_idle
	}
}
else if object_index == obj_rpg_npc_migi
{
	turnToPlayer = false
	normalTextArray[0][0]= "I'm always RIGHT."
	normalTextArray[0][1]= "Wakka wakka."
	questGiver = true
	questArray[3] = true
	questTextArray[3][0] = "Give the TEST item to the robot."
	questTextArray[3][1] = "Then come back."

	sprites = 
	{
		walkUp : spr_npc_blank_walk_up,
		walkRight : spr_npc_blank_walk_right,
		walkDown : spr_npc_blank_walk_down,
		walkLeft : spr_npc_blank_walk_left,
		idle : spr_npc_migi
	}
	data =
	{
		name : "MIGI",
		portrait : spr_portrait_migi,
		//currentArray : 0
	}
}
else if object_index == obj_rpg_npc_hidari
{
	turnToPlayer = false
	normalTextArray[0][0]= "I'm always LEAVING."
	
	questGiver = true
	questArray[2] = true
	questTextArray[2][0] = "Tell Migi I said hello."
	sprites = 
	{
		walkUp : spr_npc_blank_walk_up,
		walkRight : spr_npc_blank_walk_right,
		walkDown : spr_npc_blank_walk_down,
		walkLeft : spr_npc_blank_walk_left,
		idle : spr_npc_hidari
	}
	data =
	{
		name : "HIDARI",
		portrait : spr_portrait_hidari,
		//currentArray : 0
	}
}
if canTalk
{
	textBubble = instance_create_depth(x,y-sprite_height, depth, obj_rpg_npc_bubble)
	textBubble.creator = id
}

for (var i = 0; i < array_length(normalTextArray); i++)
{
	initialNormalTextArray[0][i] = normalTextArray[0][i]
}