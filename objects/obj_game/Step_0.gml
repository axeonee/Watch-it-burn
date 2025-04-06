// CHEAT commands
// R - reset
// X - transition
if keyboard_check_pressed(ord("R"))
{
	game_restart()	
}
else if keyboard_check_pressed(ord("X"))
{
	if (!instance_exists(transition))
	{
		instance_create_layer(x, y, "UI", transition)
	}
}