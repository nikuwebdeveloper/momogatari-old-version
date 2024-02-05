if obj_control_input.quit_press //quit game
{
	game_end();
}
if obj_control_input.reset_press //reset game
{
	game_restart();
}
if obj_control_input.fullscreen_press and !toggleFullscreen //fullscreen toggle
{
	window_set_fullscreen(true) //turn fullscreen on
	toggleFullscreen = true
}
else if obj_control_input.fullscreen_press and toggleFullscreen
{
	window_set_fullscreen(false) //turn fullscreen off
	toggleFullscreen = false
}

if layer_exists("ly_tile_wall_cap") //set wall cap depth to draw it above everything else
{
	var depthNew= -room_height - 16
	layer_depth("ly_tile_wall_cap", depthNew)
}
