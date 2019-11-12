if place_meeting(x, y, obj_boss)
{
	with (obj_boss)
	{
		state = BOSSSTATE.PHASE1;
	}
	instance_destroy();
}