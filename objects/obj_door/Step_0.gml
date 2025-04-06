if (place_meeting(x, y, obj_player)) && (keyboard_check_pressed(vk_up)) && (!obj_truck.visible) && (global.score < 4) && (!instance_exists(obj_fire))
{
	if (!instance_exists(transition))
	{
		instance_create_layer(x, y, "UI", transition)
	}
}