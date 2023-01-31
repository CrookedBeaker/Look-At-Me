/// @description Get moving!
if !global.pause && global.will > 0 {

//4-directional controls
if global.currentController != -1 {
	var up = (keyboard_check(ord("W")) || gamepad_button_check(global.currentController,gp_padu));
	var lt = (keyboard_check(ord("A")) || gamepad_button_check(global.currentController,gp_padl));
	var dn = (keyboard_check(ord("S")) || gamepad_button_check(global.currentController,gp_padd));
	var rt = (keyboard_check(ord("D")) || gamepad_button_check(global.currentController,gp_padr));
} else {
	var up = keyboard_check(ord("W"));
	var lt = keyboard_check(ord("A"));
	var dn = keyboard_check(ord("S"));
	var rt = keyboard_check(ord("D"));
}

tilt = 1;
moveDir = -1;
if dn {moveDir = 90};
if up {moveDir = 270};
if rt {
	moveDir = 45*(dn-up);
}
if lt {
	moveDir = 180-45*(dn-up);
}

//Omnidirectional controls
if global.currentController != -1 && moveDir == -1 {
	var hs = gamepad_axis_value(global.currentController,gp_axislh);
	var vs = gamepad_axis_value(global.currentController,gp_axislv);
	
	if (hs != 0 || vs != 0) moveDir = point_direction(
		x,
		y,
		x+hs,
		y-vs
	)
	
	hs = abs(hs);
	vs = abs(vs);
	tilt = (hs>vs) ? hs : vs; //Use the greater axis tilt for movement speed
}

//Actually moving, handle collision
if moveDir != -1 {
	if tilt > 0.1 {
		var moveX = tilt*moveSpeed*dcos(moveDir);
		var moveY = tilt*moveSpeed*dsin(moveDir);
	} else {
		var moveX = 0;
		var moveY = 0;
	}
	
	if place_meeting(x+moveX,y,obj_collision) {
		x = round(x);
		while !place_meeting(x+sign(moveX),y,obj_collision) {
			x+=sign(moveX);
		}
		moveX = 0;
	}
	x += moveX;
	
	if place_meeting(x,y+moveY,obj_collision) {
		y = round(y);
		while !place_meeting(x,y+sign(moveY),obj_collision) {
			y+=sign(moveY);
		}
		moveY = 0;
	}
	y += moveY;
	
	Animate(moveDir);
	
} else {
	image_speed = 0;
	image_index = 0;
}

//Handle Invincibility
if invin != 0 {
	invin--;
	if invin%2 == 0 {image_alpha = !image_alpha}
} else {
	image_alpha = 1;
}

//Handle walking sound
if (prevFrame != floor(image_index) && prevFrame == 1) {
	makeSound(snd_walk);
}
prevFrame = floor(image_index);

} else {
	if global.will <= 0 {sprite_index = spr_cat_gameover}
	image_speed = 0;
}