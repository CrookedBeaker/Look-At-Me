/// @description Make text appear

draw_set_font(fnt_dlg);
draw_set_halign(fa_center);
draw_set_color(c_black);

var sh = string_height(drawstring)
var sw = string_width(drawstring)
draw_sprite_stretched(spr_textbubble,0,x-5-sw/2,y-24-sh,sw+10,sh+8);
draw_text(x,y-20-sh,drawstring);