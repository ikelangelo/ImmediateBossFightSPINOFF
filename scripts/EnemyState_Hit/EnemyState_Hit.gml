motion_set(0, knockback);
knockback = lerp(knockback, 0, 0.1);

if knockback = 0 
{
	state = ENEMYSTATE.IDLE;
}