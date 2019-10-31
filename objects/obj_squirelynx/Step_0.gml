//////controls and such


//input for movement

jump = keyboard_check_pressed(vk_space); 
 
move_left = keyboard_check(ord("A"));

move_right = keyboard_check(ord("D"));

duck = keyboard_check(ord("S"));

key_attack = keyboard_check(ord("K"));

switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();
	break;
	
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash();
	break;
	
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo();
	break;



}



 




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












