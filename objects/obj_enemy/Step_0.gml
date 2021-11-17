/// @description Do the thing woo yeah
if !global.pause {
//Slowly stop doing things
if shake != 0 {
	shake = -(shake-0.2*sign(shake));
}

if kb != 0 { //Knocked back
	kb -= 0.2;
	
	trueX += kb*dcos(-kbDir);
	y += kb*dsin(-kbDir);
} else if hp <= 0 { //Death
	makeParticle(x,y,depth-1,spr_enemydeath);
	instance_destroy();
	makeSound(snd_enemydie);
}

x = trueX+shake;

}