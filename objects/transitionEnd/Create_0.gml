/// @description Insert description here
state = states.OUT


spr = s_trans_sq
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

//get gui size
gui_w = display_get_gui_width()
gui_h = display_get_gui_height()

//get number of sprites required
//set max sprites for x
xmax = gui_w div sprw

//set max sprites for y
ymax = gui_h div sprh
imax = sprite_get_number(spr)

//set image speed
sub_image_index_inc = sprite_get_speed(spr)/game_get_speed(gamespeed_fps)
sub_image_index = 0

//transition colour
col = c_black
