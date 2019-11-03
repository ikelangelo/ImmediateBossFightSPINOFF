



if hp <= 0 
instance_destroy();



switch(state)
{
	case ENEMYSTATE.FREE: EnemyState_Free();
	break;
	
	case ENEMYSTATE.ATTACK: 
	break;
	
	case ENEMYSTATE.HIT: EnemyState_Hit();
	break;

	case ENEMYSTATE.IDLE: EnemyState_Idle();
	break;

}