/// @description Lose some willpower

if invin == 0 {
	global.will--;
	invin = 60;
	
	if global.will == 0 {
		alarm[0] = 120;
		makeSound(snd_defeat);
	} else {
		makeSound(snd_hit);
	}
} else {
	invin++; //Increase invincibility time if hit
}