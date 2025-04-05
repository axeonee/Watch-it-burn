/// @description Grabbing grabs grab code

//If burning, drop the object
if (place_meeting(x, y, obj_fire))
{
	global.grabbed_inst = noone
}

//If the object is being grabbed
if global.grabbed_inst == obj_item1
{
	//Update the position of the object
    x = obj_player.x
    y = obj_player.y - 16
}

