if (place_meeting(x, y, obj_player)) && (visible)
{
	// Cargo loading/unloading
	if (keyboard_check(vk_up))
	{
		// Unload body if there is no ash
		if (!instance_exists(obj_item1)) && (!instance_exists(obj_ash))
		{
			instance_create_layer(x, y, "Instances", obj_item1)
			// If not grabbed
			if global.grabbed_inst == noone 
			{
				// Grab the object
		        global.grabbed_inst = obj_item1
		    }
			// If there have been 3 bodies already burnt, leave after body is unloaded
			if(global.score == 3)
			{
				alarm[2] = game_get_speed(gamespeed_fps)
			}
		}
	
		// Load ash
		else if (instance_exists(obj_ash))
		{
			// Destroy ash
			instance_destroy(obj_ash)
			global.grabbed_inst = noone 
	
			// Truck leave
				// play sound
			instance_destroy(myTextbox)
			if (global.score <= 2) global.score++
			visible = false
			instance_create_layer(x, y, "UI", transition)
	
			// Truck come back
			alarm[0] = game_get_speed(gamespeed_fps) * 7
		}
	}
	// Dialogue box
	else if (!instance_exists(obj_textbox)) && (keyboard_check(vk_space))
	{
		if (myTextbox == noone)
		{
			myTextbox = instance_create_layer(x-100, y-100, "Instances", obj_textbox)
			myTextbox.name = "Mysterious driver"
			alarm[1] = game_get_speed(gamespeed_fps) * 5
		}
		switch (global.score)
		{
			case 0:
				myTextbox.text = "Unload the cargo (Arrow Up).\nLeave no trace."
			break
			case 1:
				myTextbox.text = "You know the drill.\nGET. TO. WORK."
			break
			case 2:
				myTextbox.text = "What's with that look?\nKeep burning."
			break
			case 3:
				myTextbox.text = "HURRY UP!\nI HAVE NO TIME!"
			break
			default:
				myTextbox.text = "You are not supposed to see this. DM @AxeOne on discord."
		}
	}
}
