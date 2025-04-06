switch (global.score)
{
	case 1:
		sprite_index = spr_news_1
	break
	case 2:
		sprite_index = spr_news_2
	break
	case 3:
		sprite_index = spr_news_3
	break
	default:
		show_debug_message("Something went wrong while loading newspaper")
}

if (room == credits)
{
	sprite_index = news_credits	
}
else if (room == menu)
{
	sprite_index = spr_news_main_menu
}