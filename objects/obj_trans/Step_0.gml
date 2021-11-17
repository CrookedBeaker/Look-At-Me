/// @description Transition, but out without the mirror!

if phase = 0 { //Fade in, warp to new room!
	image_alpha += 0.01;
	if image_alpha = 1 {
		room_goto(target);
		phase = 1;
	}
} else {
	image_alpha -= 0.01;
	if image_alpha = 0 {
		if !instance_exists(obj_cutscene) {
			global.pause = false;
		} else {
			global.pause = !obj_cutscene.actAsNPC
		}
		instance_destroy();
		global.load = false;
	}
}