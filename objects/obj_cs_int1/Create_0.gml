/// @description Set some other things up

// Inherit the parent event
event_inherited();

bg2 = instance_create_depth(0,0,depth+5,obj_bg);
bg2.bg = spr_bg3;

bg1 = instance_create_depth(0,0,depth+4,obj_bg);
bg1.bg = spr_bg1;