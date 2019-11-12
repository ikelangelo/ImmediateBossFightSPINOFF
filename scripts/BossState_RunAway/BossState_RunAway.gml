if moveSp < 16 moveSp = 16;

x += moveSp;

if place_meeting(x, y, obj_boss_stopper1)
{
	state = BOSSSTATE.PHASE1;
}