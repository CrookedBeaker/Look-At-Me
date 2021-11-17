/// @description Ow oof

if kb = 0 { //Prevent a multi-hit
	makeSound(snd_enemyhit);
	
	shake += 3;
	kb = 5;
	kbDir = other.image_angle;
	hp--;
}