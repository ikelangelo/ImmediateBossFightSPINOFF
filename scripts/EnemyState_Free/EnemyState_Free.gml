//motion towards player
mp_potential_step_object(obj_CyberLynx.x, obj_CyberLynx.y, move, obj_block);



if collision_line(x, y, obj_CyberLynx.x, obj_CyberLynx.y, obj_block, false, false) != noone
{
	state = ENEMYSTATE.IDLE
}
