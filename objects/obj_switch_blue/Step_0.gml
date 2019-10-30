//color change corresponding to state of switch

if switchstate = 1 image_index = 1;
if switchstate = 0 image_index = 0;



//click to change state of switch

if mouse_check_button_pressed(mb_middle) && place_meeting(x, y, obj_psipower) == true && obj_cerpin.psienergy > 0
{
	obj_cerpin.psienergy += -1
	if switchstate = 0 	switchstate += 1
		
		
	else switchstate += -1
}

