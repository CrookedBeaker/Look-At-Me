/// @description Set some functions

//Animation!!!
function Animate(dir) {
	image_speed = 1;
	if dir < 90 || dir > 270 {
		image_xscale = 1;
	} else if dir > 90 && dir < 270 {
		image_xscale = -1;
	}
	
	if dir >= 0 && dir <= 180 {
		sprite_index = spr_cat_dr;
	} else if dir > 180 && dir < 360 || dir < 0 {
		sprite_index = spr_cat_ur;
	}
}