if place_meeting(x, y, obj_boss)
{
	with (obj_boss)
		{
		bulletCooldown = 180;
		}
	instance_destroy();

}
if image_index = 9 instance_destroy();