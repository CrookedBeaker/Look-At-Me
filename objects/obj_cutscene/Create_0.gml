/// @description Make sure you should be there

if !actAsNPC {
	if global.load || instance_exists(obj_mirrortrans) {
		instance_destroy();
	} else {
		obj_camera.follow = id;
		obj_camera.disableBounds = true;
		global.pause = true;
	}
}

function dialogPart(text) { //A part that's only composed of text
	if !instance_exists(obj_trans) {
	
	if !dShown {
		showDialog(text,false);
		dShown = true;
	} else {
		if !instance_exists(obj_textbox) {
			i++;
			dShown = false;
		}
	}
	
	}
}

function shiftPart(posX,posY,spd) { //A part that's just moving to a position
	if !instance_exists(obj_trans) {
	
	if !moveStart {
		moveDir = point_direction(x,y,posX,posY);
		moveStart = true;
	} else {
		var moveX = spd*dcos(moveDir);
		var moveY = spd*dsin(-moveDir);
		
		//Snap to position
		if abs(posX-x) <= moveX { 
			x = posX;
		} else {
			x += moveX;
		}
		
		if abs(posY-y) <= moveY {
			y = posY;
		} else {
			y += moveY;
			//show_debug_message(string(moveY))
		}
		
		//Done!
		if (x == posX && y == posY) {
			moveStart = false;
			i++;
		}
	}
	
	}
}

function alarmPart(dur) {
	if !alarmSet {
		alarm[0] = dur;
		alarmSet = true;
	}
}

function endCS() {
	instance_destroy();
	obj_camera.follow = obj_player;
	obj_camera.disableBounds = true;
	global.pause = false;
}