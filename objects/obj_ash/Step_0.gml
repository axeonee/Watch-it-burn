//If the object is being grabbed
if (global.grabbed_inst == obj_ash)
{
	//Update the position of the object
    x = obj_player.x
    y = obj_player.y - 25
}

if (place_meeting(x, y, obj_player)) && (keyboard_check(vk_up))
{
	// If not grabbed
	if global.grabbed_inst == noone 
	{
		// Grab the object
		global.grabbed_inst = obj_ash
	}	
}