if (burning == true)
{
	// Play animation
	
	// Spawn ash
	if (place_meeting(x, y, obj_player)) && (!instance_exists(obj_ash))
{
		instance_create_layer(x, y+40, "Instances", obj_ash)
}
	// IF animation is over, stop burning.
	alarm[0] = game_get_speed(gamespeed_fps) * 10
}