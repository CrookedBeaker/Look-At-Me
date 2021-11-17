/// @description YEAH

sprite_index = bg;

xDraw += xScroll;
if xDraw == sprite_get_width(bg) {xDraw = 0}
yDraw += yScroll;
if yDraw == sprite_get_height(bg) {yDraw = 0}