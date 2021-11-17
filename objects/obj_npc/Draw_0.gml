/// @description Insert description here
// You can write your code in this editor

draw_self();
if draw {
	var subimg = 0;
	if global.currentController >= 0 && global.currentController < 4 {subimg = 1};
	if global.currentController >= 4 {subimg = 2};
	
	draw_sprite(spr_interactbutton,subimg,x,y-16);
}

/*
draw_text(x,y,360-point_direction(obj_player.x,obj_player.y,x,y));