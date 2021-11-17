/// @description Unlock it!

relDepth();

if distance_to_object(obj_player) < 10 && global.key {
	unlock = true;
	image_speed = 1;
	global.key = false;
	
	makeSound(snd_unlock);
}

if unlock {
	if fade {
		image_alpha -= 0.01;
		if image_alpha == 0 {instance_destroy()};
	} else {
		if floor(image_index) == 4 {
			fade = true;
			image_speed = 0;
		}
	}
}