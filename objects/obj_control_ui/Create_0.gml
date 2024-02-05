//talk target to display info from
depth = -9999;
displayTarget = noone; //talk target instance
displayName = "error-blank"; //talk target name
displayText = "error-blank"; //talk target text

xCenter = 0 //center of screen
yCenter = 0

diagBoxHeight = 80
diagBoxWidth = 320

draw_set_color(c_white)
draw_set_font(font_small)
arrayText = [""]
arrayLine = [""]

meteorTimerMax =10
meteorTimer = irandom_range(0,meteorTimerMax-1)

toggleFullscreen = false
toggleStartMenu = false

toggleActiveQuest = true

startMenu = {
	pageNum : 0,
	pageMax : 6,
	cursorMainPosNum : 0,
	cursorMainPosMax : 6,
	cursorSubPageNum : 0,
	cursorSubPageMax : 10,
	cursorSubPosNum : 0,
	cursorSubPosMax : 5,
	mainMenu : true,
}
drawQuestObj = noone
instance_create_depth(x,y,depth + 2, obj_ui_menu_start_bg_black)
iconActive = instance_create_depth(x,y,depth - 2, obj_ui_menu_active)
popupStyle = spr_ui_rpg_popup_questNew
popupTimer = 0 //pop up for quests

hPos = 0
vPos = 0

arrayCursor[0][0] = true
arrayCursor[0][1] = false
arrayCursor[0][2] = false
arrayCursor[0][3] = false

pageNormal = true
pageQuest = false

questResetSwitch = true
