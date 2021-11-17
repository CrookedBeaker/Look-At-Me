/// @description Transition!

timer++;
if timer = 16 {timer = 0}

if phase = 0 { //Fade in, warp to new room!
	image_alpha += 0.01;
	if image_alpha = 1 {
		room_goto(target);
		phase = 1;
	}
} else {
	obj_player.x = pCoords[0];
	obj_player.y = pCoords[1];
	image_alpha -= 0.02;
	if image_alpha = 0 {
		global.pause = false;
		instance_destroy();
	}
}