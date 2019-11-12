x = mouse_x;
y = mouse_y; 

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "dronekiller", obj_stun);
}

if place_meeting(x, y, obj_block) 
{
	obj_controller.life += -1;	
}

if mouse_check_button_pressed(mb_right) && !place_meeting(x, y, obj_CyberLynx)
{
	instance_change(obj_drone_block, true);
}



