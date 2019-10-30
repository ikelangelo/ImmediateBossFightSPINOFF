//////controls and such

///middle button controls for using your focus to change the state of switches are in the switch parent object

//input for movement

jump = keyboard_check_pressed(vk_space); 
 

move_left = keyboard_check(ord("A"));


move_right = keyboard_check(ord("D"));


//dash mechanic

if mouse_check_button_pressed(mb_right) && (dashcooldown < 0) && (move_right ^^ move_left == true)
{
	alarm_set(0, 4)
	
	walksp = 35
	
	dashcooldown = 180
	
	vsp = 0
}

if mouse_check_button_released(mb_right) walksp = 4;

dashcooldown += -1;
 
if obj_cerpin.dashcooldown < 0 == true sprite_index = spr_cerpin_dash_ready
else sprite_index = spr_cerpin;

//calculate movement

var move = move_right - move_left;
	
hsp = move * walksp;


vsp += grv;

if (place_meeting(x, y+1, obj_block)) && (jump)
{
	vsp = -10;
}

//running

if keyboard_check(vk_shift)
{
	walksp = 8
}	

if keyboard_check_released(vk_shift) 
{
	walksp = 4
}




//horizontal collision

if (place_meeting(x+hsp, y, obj_block))
{
	while (!place_meeting(x+sign(hsp), y, obj_block))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//vertical collision

if (place_meeting(x, y+vsp, obj_block))
{
	while (!place_meeting(x, y+sign(vsp), obj_block))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;


////animations
if (!place_meeting(x, y+1, obj_block))
{
	sprite_index = spr_cerpin;
	image_speed = 0 
	if sign(vsp) > 0 image_index = 6; 
	
		else sprite_index = spr_cerpin;
		image_speed = 1
} 
if (hsp != 0) image_xscale = sign(hsp);

// shield mechanic

if mouse_check_button(mb_left) && (shieldenergy > 0) && !instance_exists(obj_shield)
{
	instance_create_layer(x, y, "layer_shield_cursor", obj_shield)
	shieldenergy += -1
}

