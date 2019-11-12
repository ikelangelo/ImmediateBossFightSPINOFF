if place_meeting(x, y, obj_CyberLynx) or place_meeting(x, y, obj_drone)
{
	instance_destroy();
	obj_controller.life += 100;
}