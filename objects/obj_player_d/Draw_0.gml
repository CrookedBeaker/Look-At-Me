/// @description Draw the arrow and stuff

if (!instance_exists(obj_swipe) && global.canAttack) {
	
	if (dir > 180) {draw_self()};
	draw_sprite_ext(spr_arrow,0,x,y,1,1,dir,c_white,1);
	if (dir <= 180) {draw_self()};
	
} else {
	draw_self();
}