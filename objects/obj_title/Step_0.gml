/// @description Start!

var confirm = (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.currentController,gp_start) || gamepad_button_check_pressed(global.currentController,gp_face1));
var down = (keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(global.currentController,gp_padd) || stickTap(gp_axislv,false));
var up = (keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(global.currentController,gp_padu) || stickTap(gp_axislv,true));

if menu == -1 {
	if confirm {
		menu = 0;
		makeSound(snd_menublop);
	}
} else if menu == 0 {
	iconY = lerp(iconY,i*20,0.1);
	
	if down {
		i++;
		makeSound(snd_menublip);
	}
	if i > 3 {i = 0}
	if up {
		i--;
		makeSound(snd_menublip);
	}
	if i < 0 {i = 3}
	
	if confirm {
		switch i {
			case 0: //Begin
				transition(rm_lv1);
				saveOptions();
				menu = 1;
				makeSound(snd_menublop);
				break;
			case 1: //Continue
				loadGame();
				saveOptions();
				menu = 1;
				makeSound(snd_menublop);
				break;
			case 2: //Sound
				global.sound = !global.sound;
				makeSound(snd_menublip);
				break;
			case 3: //Music
				global.music = !global.music;
				makeSound(snd_menublip);
				//Disable/enable sound
				if global.music {
					audio_play_sound(mus_main,9,true);
				} else {
					audio_stop_all();
				}
		}
	}
}

x = obj_camera.x+window_get_width()/8-16;
y = obj_camera.y+window_get_height()/8;

updateLastStick(gp_axislv);