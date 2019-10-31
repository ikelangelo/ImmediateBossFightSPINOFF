//////controls and such


//input for movement

jump = keyboard_check_pressed(vk_space); 
 
move_left = keyboard_check(ord("A"));

move_right = keyboard_check(ord("D"));

duck = keyboard_check(ord("S"));


//dash mechanic (set up in this way so we cant clip thru blocks

if keyboard_check_pressed(ord("L")) && (dashcooldown < 0) && (move_right ^^ move_left == true)
{
	alarm_set(0, 6)
	
	walksp = 35
	
	dashcooldown = 180
	
	vsp = 0
}

if keyboard_check_released(ord("L")) walksp = 4;

dashcooldown += -1;
 

//calculate horizontal movement

var move = move_right - move_left;
	
hsp = move * walksp;
 
//calc vertical movement with gravity & creating terinal velocity
 
vsp += grv;


//jump and double jump (known as AIR_JUMP so we dont have to mess with the current jump mechanic)
if (jump) && (AIR_JUMP > 0)
{
	vsp = -jumpSpeed;
	AIR_JUMP -= 1;
}
//resets air jumps to one after making contact with ground and avoiding bug where horizontal collision causes more air jumps to be available

if (place_meeting(x, y+1, obj_block)) 
{
AIR_JUMP = 1;
}

//running

if keyboard_check(vk_shift)
{
	walksp = 12
}	

if keyboard_check_released(vk_shift) 
{
	walksp = 6
}




//horizontal collision using hsp in the collision check helps prevent the dash from clipping through obj_block

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





