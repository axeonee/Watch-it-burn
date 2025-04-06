if (place_meeting(x, y, obj_player)) && (canTrigger)
{
	canTrigger = false
	alarm[0] = game_get_speed(gamespeed_fps) 
	alarm[1] = game_get_speed(gamespeed_fps) * 0.5
}