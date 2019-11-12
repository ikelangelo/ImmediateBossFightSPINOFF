moveSp = 0;

normalCooldown = 40;

enemyCooldown = 180;
enemyCooldown += -1;
if enemyCooldown <= 0
{
	instance_create_depth(x+irandom_range(-32, 32), y+irandom_range(-32, 32), "Instances", obj_watcher_drone)
	enemyCooldown = 180;
}


if hp <= 0

state = BOSSSTATE.RUNAWAY;