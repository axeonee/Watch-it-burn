/// @description Insert description here
switch(state){
	case states.OUT:	
		if(sub_image_index < imax + xmax) {
			//inmcrement index
			sub_image_index += sub_image_index_inc
		} else {
			state = states.IN
			//goto room
			if room == room1 room_goto_next() else room_goto_previous()
		}
	break;
	case states.IN:
		if sub_image_index > 0 {
			sub_image_index -= sub_image_index_inc
		} else instance_destroy()
	break;
}