/// @description Interact!

draw = (distance_to_object(obj_player) < 20 && !talk);

relDepth();

if draw && !talk && (keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.currentController,gp_face1)) {
	if (x != obj_player.x) {image_xscale = sign(obj_player.x-x)};
	talk = true;
	global.pause = true;
}

if talk && !instance_exists(obj_textbox) {
	if !variable_instance_exists(id,"dlist") {dlist = ["Nothing"]}
	
	if i < array_length(dlist) {
		showDialog(dlist[i],false);
		i++;
	} else {
		talk = false;
		i = loopLast ? i-1 : 0;
		global.pause = false;
		
		if givePackage {global.package = true}
	}
}