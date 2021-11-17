/// @description Reflection?

draw_sprite(spr_mirror_2,0,x,y);

if collision_rectangle(x+8,y+48,x+56,y+82,obj_player,0,0) {
	//var pFace = (obj_player.sprite_index == spr_cat_ur);
	var pSpr = spr_cat_ur;
	switch obj_player.sprite_index {
		case spr_cat_dr:
			pSpr = spr_dcat_ur;
			break;
		case spr_cat_ur:
			pSpr = spr_dcat_dr;
			break;
		case spr_dcat_dr:
			pSpr = spr_cat_ur;
			break;
		case spr_dcat_ur:
			pSpr = spr_cat_dr;
	}
	
	var pXRel = obj_player.x-(8*obj_player.image_xscale);
	var pYRel = (y+48-obj_player.y)+y+36;
	
	var pTop = clamp((y+14)-pYRel,0,17);
	
	if obj_player.image_xscale == 1 {
		var pLeft = clamp((x+8)-pXRel,0,14);
		var pWidth = clamp(abs((x+56)-pXRel),0,14);
	} else {
		var pLeft = clamp(pXRel-(x+56),0,14);
		var pWidth = clamp(abs(pXRel-(x+8)),0,14);
	}
	
	draw_sprite_part_ext(
		//pFace ? spr_dcat_dr : spr_dcat_ur,
		pSpr,
		obj_player.image_index,
		pLeft,
		pTop,
		pWidth,
		17,
		pXRel+(pLeft*obj_player.image_xscale),
		pYRel+pTop,
		obj_player.image_xscale,
		1,c_white,1
	)
}

draw_self();

if draw {
	var subimg = 0;
	if global.currentController >= 0 && global.currentController < 4 {subimg = 1};
	if global.currentController >= 4 {subimg = 2};
	
	draw_sprite(spr_interactbutton,subimg,x+32,y+16);
}