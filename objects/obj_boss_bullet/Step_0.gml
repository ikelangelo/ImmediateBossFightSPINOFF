

if place_meeting(x, y, obj_CyberLynx)
{
	obj_controller.life += -10;
	instance_destroy();
}

if place_meeting(x, y, obj_drone)
{
	obj_controller.life += -10;
	instance_destroy();
}