if place_meeting(x, y, obj_boss)
{
	with (obj_boss)
	{
		runaway = false;
		state = BOSSSTATE.PHASE1;
	}
	instance_destroy();
}