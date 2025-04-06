// CHEAT commands
// R - reset
// X - transition
/*if keyboard_check_pressed(ord("R"))
{
	game_restart()	
}

*/

// If in room 2 and player pressed up, transition
if keyboard_check_pressed(vk_up) && room == room2
{
	if (!instance_exists(transition))
	{
		instance_create_layer(x, y, "UI", transition)
	}
}

// If 4 bodies have been burnt, trigger the end scene
else if (global.score == 3) && (instance_exists(obj_ash))
{
	instance_activate_layer("Fire")
}
else instance_deactivate_layer("Fire")
 
