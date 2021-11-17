/// @description Draw the UI!
if instance_exists(obj_player) {

draw_sprite(spr_willmeter,0,4,4);

for (var i=0; i<global.will; i++) {
	draw_sprite(spr_willpiece,0,8+i*9,19);
}

if global.package {draw_sprite(spr_package,0,display_get_gui_width()-52,4)};
if global.key {draw_sprite(spr_keyui,0,display_get_gui_width()-56,44)}

}

if keyboard_check(ord("C")) {draw_sprite(spr_controls,0,window_get_width()/8,window_get_height()/8)}