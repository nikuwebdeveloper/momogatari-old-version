if gamepad_is_connected(0)
{
	up_hold = gamepad_button_check(0,gp_padu);
	down_hold = gamepad_button_check(0,gp_padd);
	left_hold = gamepad_button_check(0,gp_padl);
	right_hold = gamepad_button_check(0,gp_padr);
}
else
{
	up_hold = keyboard_check(ord("W"));
	down_hold = keyboard_check(ord("S"));
	left_hold = keyboard_check(ord("A"));
	right_hold = keyboard_check(ord("D"));
}

up_press = keyboard_check_pressed(ord("W"))
down_press = keyboard_check_pressed(ord("S"));
left_press = keyboard_check_pressed(ord("A"));
right_press= keyboard_check_pressed(ord("D"));

shoulder_left_press = keyboard_check_pressed(ord("Q"))
shoulder_right_press = keyboard_check_pressed(ord("E"))

run_hold = keyboard_check(vk_shift);

interact_press = keyboard_check_pressed(ord("F"));

start_press = keyboard_check_pressed(vk_enter)
select_press = keyboard_check_pressed(vk_backspace)

quit_press = keyboard_check_pressed(vk_escape);
reset_press = keyboard_check_pressed(vk_f1);

fullscreen_press = keyboard_check_pressed(vk_f11)