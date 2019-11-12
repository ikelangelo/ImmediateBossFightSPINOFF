bulletCooldown += -1;
if bulletCooldown < 0
{
	instance_create_layer(x, y, "dronekiller", obj_boss_bullet)
	bulletCooldown = normalCooldown;
	
}


if place_meeting(x,y, obj_bosshitbox)
{
	hp += -1;
}

switch(state)
{
	case BOSSSTATE.RUNAWAY: BossState_RunAway();
	break;
	
	case BOSSSTATE.PHASE1: BossState_Phase1();
	break;
	
	case BOSSSTATE.PHASE2: BossState_Phase2();
	break;
	
	case BOSSSTATE.PHASE3: BossState_Phase3();
	break;

	case BOSSSTATE.DEATH: BossState_Death();
	break;

}