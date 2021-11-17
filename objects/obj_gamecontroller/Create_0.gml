/// @description Control some bits of the game
global.pause = false;
global.will = 4;
global.canAttack = true;
global.package = false;
global.key = false;
global.load = false;

loadOptions();

global.currentController = -1;
for (var i=0; i<12; i++) {
	if gamepad_is_connected(i) {global.currentController = i};
}