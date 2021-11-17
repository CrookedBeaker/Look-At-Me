/// @description Draw the button

draw_self();
if draw {
	var subimg = 0;
	if global.currentController >= 0 && global.currentController < 4 {subimg = 1};
	if global.currentController >= 4 {subimg = 2};
	
	draw_sprite(spr_interactbutton,subimg,x,y-16);
}