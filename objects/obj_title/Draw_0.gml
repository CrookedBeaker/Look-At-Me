/// @description Make the bottom line

draw_sprite_ext(spr_long,0,x,y,20,1,0,c_white,1);

draw_self();

draw_set_halign(fa_left);
draw_set_font(fnt_dlg);
draw_set_color(c_black);
draw_text(x-window_get_width()/4+16,y-20,"Hold C for\nControls");