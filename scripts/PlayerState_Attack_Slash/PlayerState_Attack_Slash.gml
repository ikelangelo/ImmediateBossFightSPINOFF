///stops player movement 

hsp = 0;
vsp = 0;


//start of attack
if (sprite_index != spr_CyberLynx_Slash)
{
	sprite_index = spr_CyberLynx_Slash;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

///use attack hitbox & check for hits
mask_index = spr_CyberLynx_SlashHitBox;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, obj_enemy, hitByAttackNow, false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		/// if this instance has not been hit by this attack yet
		var hitID = ds_list_find_value(hitByAttackNow, i);
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				///this is what happens to the enemy when they are hit
				hp += -1;
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = spr_CyberLynx_Idle;

//if (Animation_End()) this is robust but unnecessary
//if ev_animation_end I cant figure out how this works or doesnt? the documentation sucks.
///the damn sprite for attacking has 6 frames and since the index starts at 0, five should be the final frame 
// and thus the trigger to end this script and state
if image_index > 5
{
	sprite_index = spr_CyberLynx_Idle;
	state = PLAYERSTATE.FREE;
}