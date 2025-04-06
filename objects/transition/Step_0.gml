/// @description Insert description here
switch(state){
	case states.OUT:	
		if(sub_image_index < imax + xmax) {
			//inmcrement index
			sub_image_index += sub_image_index_inc
		} else {
			state = states.IN
			//goto room
			switch (room)
			{
				case menu:
					room_goto(room1)
				break
				case room1:
					room_goto_next()
				break
				case room2:
					room_goto_previous()
				break
			}
		}
	break;
	case states.IN:
		if sub_image_index > 0 {
			sub_image_index -= sub_image_index_inc
		} else instance_destroy()
	break;
}