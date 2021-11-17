/// @description Do npc stuff but also save

// Inherit the parent event
event_inherited();

//Keep these constant
image_speed = 1;
image_xscale = 1;

if talk {
	if !savedYet {
		savedYet = true;
		global.will = 4;
		saveGame();
	}
} else {
	savedYet = false;
}