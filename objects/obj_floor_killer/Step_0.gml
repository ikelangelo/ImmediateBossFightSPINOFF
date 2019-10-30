if (place_meeting(x,y-1, obj_cerpin) || place_meeting(x-1,y, obj_cerpin) || place_meeting(x+1,y, obj_cerpin) || place_meeting(x,y+1, obj_cerpin)) && !instance_exists(obj_shield)
{
	audio_play_sound(snd_shocked, 3, false);
	obj_controller.life += -2;
	obj_cerpin.sprite_index = spr_cerpin_shocked;
}

