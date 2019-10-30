window_set_cursor(cr_none);

life += -1;


/*listen, okay... if you take away the && obj cerpin exists statement the game is effing broken
Im not sure why this is the case but it makes me want to pay for all of EA's pay to win content 
(because that's what you do when you hate yourself) and cry

PLZ HALP, why does it do this and how do you find out why it does this?

*/


if life < 0 && instance_exists(obj_cerpin)
{
	
	//blackAlpha += 0.05;
	audio_stop_all();
	room_goto(rm_death);
}


