/// @description Reset controller

global.currentController = -1;
for (var i=0; i<12; i++) {
	if gamepad_is_connected(i) {global.currentController = i};
}