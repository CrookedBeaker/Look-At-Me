/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.currentController,gp_face1) {
	if char < string_length(str) {
		char = string_length(str)-spd;
	} else {
		instance_destroy();
		if unpause {global.pause = false};
	}
}

if char < string_length(str) {
	char += spd;
	drawstring = string_copy(str,0,char);
}