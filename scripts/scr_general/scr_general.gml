///I'll probably only need this for global functions

function showDialog(text,unpause) {
	var inst = instance_create_depth(x,y,-9,obj_textbox);
	inst.str = text;
	inst.unpause = unpause;
}

function makeParticle(x,y,depth,sprite) {
	var inst = instance_create_depth(x,y,depth,obj_particle);
	inst.sprite_index = sprite;
}

function makeSound(soundid) {
	if global.sound {audio_play_sound(soundid,10,false)};
}

function transition(target) {
	if !instance_exists(obj_trans) {
		var inst = instance_create_depth(-64,-64,0,obj_trans);
		inst.target = target;
	}
}

//Stick tapping!
function stickTap(axis,negative) {
	if !variable_instance_exists(id,"lastStick") {lastStick = 0}
	
	var target = negative ? -1 : 1;
	var current = round(gamepad_axis_value(global.currentController,axis));
	var out = (current == target && current != lastStick);
	
	return out;
}

function updateLastStick(axis) {
	lastStick = round(gamepad_axis_value(global.currentController,axis));
}

//Set depth relative to player
function relDepth() {
	if instance_exists(obj_player) {
		depth = obj_player.depth+sign(obj_player.y-y)
	}
}

//Saveing and Loading
function saveOptions() {
	ini_open("options.ini");
		
	ini_write_real("Options","sound",global.sound);
	ini_write_real("Options","music",global.music);
	
	ini_close();
}

function loadOptions() {
	if file_exists("options.ini") {
		ini_open("options.ini");
		
		global.sound = ini_read_real("Options","sound",true);
		global.music = ini_read_real("Options","music",true);
		
		ini_close();
	} else {
		global.sound = true;
		global.music = true;
	}
}

function saveGame() {
	ini_open("main.ini");
		
	ini_write_real("General","package",global.package);
	ini_write_real("General","key",global.key);
	ini_write_real("General","room",room);
	
	ini_close();
}

function loadGame() {
	if file_exists("main.ini") {
		ini_open("main.ini");
		
		global.package = ini_read_real("General","package",false);
		global.key = ini_read_real("General","key",false);
		var rm = ini_read_real("General","room",rm_lv1);
		
		ini_close();
		
		global.will = 4;
		
		//Travel to room
		global.load = true;
		transition(rm);
	} else {
		if room == rm_gameover {
			transition(rm_title);
		} else {
			makeSound(snd_no);
		}
	}
}