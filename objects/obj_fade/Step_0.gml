/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5346DEE7
/// @DnDArgument : "code" "image_alpha += 0.0045;$(13_10)if(image_alpha >= 1)$(13_10){$(13_10)	room_goto_next();$(13_10)	audio_stop_all();$(13_10)}"
image_alpha += 0.0045;
if(image_alpha >= 1)
{
	room_goto_next();
	audio_stop_all();
}