/// @description Why worry about positioning when you don't have to
var small = (window_get_height()/4 <= 192)

if menu == -1 {
	draw_sprite(spr_title,0,8,8);
	draw_sprite(spr_start,0,18,116);
} else if menu == 0 {
	if !small {draw_sprite(spr_title,0,8,8)};
	
	draw_sprite(spr_menutext,0,32,116-96*small);
	draw_sprite(spr_menutext,1,32,136-96*small);
	draw_sprite(spr_menutext,3,32,156-96*small);
	draw_sprite(spr_menutext,4,32,176-96*small);
	
	draw_sprite(spr_menuicon,1+global.sound,128,155-96*small);
	draw_sprite(spr_menuicon,1+global.music,128,175-96*small);
	
	draw_sprite(spr_menuicon,0,14,116+iconY-96*small);
}