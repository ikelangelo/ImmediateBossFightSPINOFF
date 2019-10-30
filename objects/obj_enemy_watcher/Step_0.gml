//audio is a farbic shaver pitch shifted by audacity

audio_play_sound(snd_watcher, 1, true);

//motion towards player

move_towards_point(obj_cerpin.x, obj_cerpin.y, move);

if place_meeting(x,y, obj_block) || place_meeting(x,y, obj_shield)
{
	repeat(15) instance_create_layer(x + random_range(-32,32),y + random_range(-32,32), "layer_player", obj_gore);
	audio_stop_sound(snd_watcher);
	instance_destroy();
}

if place_meeting(x,y, obj_cerpin) && !instance_exists(obj_shield)
{
	obj_controller.life += -600;
	audio_stop_sound(snd_watcher);
	audio_play_sound(snd_grunt, 1, false);
	instance_destroy();
}

