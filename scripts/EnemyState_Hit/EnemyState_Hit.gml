motion_set(0, knockback*obj_CyberLynx.image_xscale);
knockback = lerp(knockback, 0, 0.1);
sprite_index = spr_watcher_shocked;
if knockback = 0 
{
	sprite_index = spr_watcher_red;
	state = ENEMYSTATE.IDLE;
}