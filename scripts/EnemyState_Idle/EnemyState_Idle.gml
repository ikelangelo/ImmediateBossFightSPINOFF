//start motion towards player
if collision_line(x, y, obj_CyberLynx.x, obj_CyberLynx.y, obj_block, false, false) = noone
{
	 state = ENEMYSTATE.FREE;
}