/// @description End the game!

draw = (distance_to_object(obj_player) < 20 && !active);

relDepth();

if draw && !active && (keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.currentController,gp_face1)) {
	if (x != obj_player.x) {image_xscale = sign(obj_player.x-x)};
	active = true;
	global.pause = true;
	
	image_index = 0;
	sprite_index = spr_present;
	obj_camera.follow = id;
	obj_camera.disableBounds = true;
	instance_destroy(obj_player);
}

if active {
	switch i {
		case 0:
			dialogPart("Hi BB!\nHow've you been?");
			break;
		case 1:
			dialogPart("That's awesome.\nWhat brings you all the way\nout here?");
			break;
		case 2:
			image_index = 1;
			dialogPart("Oh, for me?\nFrom Gray?");
			break;
		case 3:
			image_index = 2;
			dialogPart("Wait, I think I know what this is.");
			break;
		case 4:
			image_index = 3;
			alarmPart(120);
			break;
		case 5:
			image_index = 4;
			alarmPart(60);
			break;
		case 6:
			image_index = 5;
			alarmPart(60);
			break;
		case 7:
			dialogPart("...It's for you.");
			break;
		case 8:
			dialogPart("...to my best friend.");
			break;
		case 9:
			image_index = 6;
			alarmPart(120);
			break;
		case 10:
			image_index = 7;
			alarmPart(180);
			break;
		case 11:
			transition(rm_credits);
	}
}