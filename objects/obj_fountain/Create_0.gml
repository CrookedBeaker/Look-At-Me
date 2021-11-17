/// @description Set dialogue

// Inherit the parent event
event_inherited();

dlist = ["Will restored and\ngame saved."]

//Reposition the player
if global.load {
	obj_player.x = loadLoc[0];
	obj_player.y = loadLoc[1];
}