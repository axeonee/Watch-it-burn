// Player Input
var key_left = keyboard_check(vk_left)
var key_right = keyboard_check(vk_right)
var key_jump = keyboard_check(vk_up)

// Calc Movement
var move = key_right - key_left

hsp = move * walksp

vsp = vsp + grv

if (place_meeting(x, y+1, par_collision)) && (key_jump)
{
	vsp = -7
}

//Ladder
if (place_meeting(x, y+1, obj_ladder)) && (key_jump)
{
	vsp = -7
}

// Horizontal Collision
if (place_meeting(x+hsp, y, par_collision))
{
	while (!place_meeting(x+sign(hsp), y, par_collision))
	{
		x = x + sign(hsp)	
	}
	hsp = 0
}

if (canMove) x = x + hsp

// Vertical Collision
if (place_meeting(x, y+vsp, par_collision))
{
	while (!place_meeting(x, y+sign(vsp), par_collision))
	{
		y = y + sign(vsp)	
	}
	vsp = 0
}
if (canMove) y = y + vsp