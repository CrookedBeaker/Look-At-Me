/// @description Travel to Darkside

if instance_exists(obj_player) {
	depth = obj_player.depth+sign(obj_player.y-y)
}

draw = (collision_rectangle(x+16,y+48,x+48,y+66,obj_player,0,0) && !global.pause);

if draw && !global.pause && global.will > 0 && (keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.currentController,gp_face1)) {
	if global.package {
		var inst = instance_create_depth(0,0,0,obj_mirrortrans);
		inst.target = target;
	} else {
		with obj_player {showDialog("I'll come back to this later.",true)}
	}
}