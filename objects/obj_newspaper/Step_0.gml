switch (global.score)
{
	case 1:
		sprite_index = spr_newspaper1
	break
	case 2:
		sprite_index = spr_newspaper2
	break
	case 3:
		sprite_index = spr_newspaper3
	break
	default:
		show_debug_message("Something went wrong while loading newspaper")
}