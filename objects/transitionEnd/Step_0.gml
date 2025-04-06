/// @description Insert description here
switch(state){
	case states.OUT:	
		if(sub_image_index < imax + xmax) {
			//inmcrement index
			sub_image_index += sub_image_index_inc
		} else {
			state = states.IN
			//goto room
			room_goto(credits)
		}
	break;
	case states.IN:
		if sub_image_index > 0 {
			sub_image_index -= sub_image_index_inc
		} else instance_destroy()
	break;
}