currentQuestNum = -1
currentQuestStep = 0
toggleNextQuest = true
noQuest =
{
	questNum : -1,
	title : "error-no quest",
	description :  "error-no quest",
	questGiverNPC : obj_rpg_npc_whiteSuit,
	initItem : "none",
	reward : "error",
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "none",
	rewardAbility : "none",
	discovered : false,
	discoverable : false,
	complete : false,
	questStep : 0,
	questActive : false
}
quest_0 =
{
	questNum : 0,
	title : "First Quest",
	description :  "Meet the crew of the ship.",
	questGiverNPC : obj_rpg_npc_robot,
	initItem : "none",
	reward : true,
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "AMMO", //special ammo capacity
	rewardAbility : "none",
	discovered : false,
	discoverable : true,
	complete : false,
	questStep : 0,
	questActive : false, 
	
	multiNPC : 0
}
quest_1 =
{
	questNum : 1,
	title : "L and R",
	description :  "Talk to Migi and Hidari in either order.",
	questGiverNPC : obj_rpg_npc_robot,
	initItem : "none",
	reward : true,
	rewardItem : "SPREAD",
	rewardMoney : 0,
	rewardUpgrade : "AMMO",
	rewardAbility : "none",
	discovered : false,
	discoverable : false,
	complete : false,
	questStep : 0,
	questActive : false

}
quest_2 =
{
	questNum : 2,
	title : "Anytime",
	description :  "Talk to Robot.",
	questGiverNPC : obj_rpg_npc_hidari,
	initItem : "none",
	reward : false,
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "none",
	rewardAbility : "none",
	discovered : false,
	discoverable : true,
	complete : false,
	questStep : 0,
	questActive : false
}
quest_3 = 
{
	questNum : 3,
	title : "Quest Object",
	description :  "Give item to Robot.",
	questGiverNPC : obj_rpg_npc_migi,
	initItem : "TEST",
	reward : false,
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "none",
	rewardAbility : "none",
	discovered : false,
	discoverable : true,
	complete : false,
	questStep : -1,
	questActive : false
}
quest_4 = 
{
	questNum : 4,
	title : "error-quest4",
	description :  "error-q4",
	questGiverNPC : obj_rpg_npc_whiteSuit,
	initItem : "none",
	reward : false,
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "none",
	rewardAbility : "none",
	discovered : false,
	complete : false,
	arrayQuestStep: 0,
	arrayQuestText: "errorq4",
	questActive : false,
	bubbleToggle : false,
	discoverable : false,
	questToggle : false,
	totalQuestsAddToggle : false ,
}
quest_5 = 
{
	questNum : 5,
	title : "error quest 5",
	description :  "error",
	questGiverNPC : obj_rpg_npc_whiteSuit,
	initItem : "none",
	reward : false,
	rewardItem : "none",
	rewardMoney : 0,
	rewardUpgrade : "none",
	rewardAbility : "none",
	discovered : false,
	complete : false,
	arrayQuestStep: 0,
	arrayQuestText: "errorq5",
	questActive : false,
	bubbleToggle : false,
	discoverable : false,
	questToggle : false,
	totalQuestsAddToggle : false ,
}

