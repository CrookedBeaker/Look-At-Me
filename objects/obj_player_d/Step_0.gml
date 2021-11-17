/// @description You can also swipe now

// Inherit the parent event
event_inherited();

if (global.canAttack && !global.pause && global.will > 0) {

if global.currentController != -1 {
	attack = gamepad_button_check_pressed(global.currentController,gp_shoulderrb);
	var hs = gamepad_axis_value(global.currentController,gp_axisrh);
	var vs = gamepad_axis_value(global.currentController,gp_axisrv);
	
	if (hs != 0 || vs != 0) dir = point_direction(
		x,
		y,
		x+hs,
		y+vs
	)
} else {
	attack = mouse_check_button_pressed(mb_left);
	dir = point_direction(
		x,
		y,
		mouse_x,
		mouse_y
	)
}

if (attack && !instance_exists(obj_swipe)) {
	var depthMod = (dir > 180) ? -1 : 1;
	
	var inst = instance_create_depth(x,y,depth+depthMod,obj_swipe);
	inst.image_angle = dir;
}

}

if global.will <= 0 {sprite_index = spr_dcat_gameover}