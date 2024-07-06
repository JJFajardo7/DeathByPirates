/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 3F99A3C2
/// @DnDArgument : "soundid" "aBGM"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "aBGM"
var l3F99A3C2_0 = aBGM;
if (!audio_is_playing(l3F99A3C2_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4165270F
	/// @DnDParent : 3F99A3C2
	/// @DnDArgument : "soundid" "aBGM"
	/// @DnDArgument : "loop" "1"
	/// @DnDArgument : "gain" "0.6"
	/// @DnDSaveInfo : "soundid" "aBGM"
	audio_play_sound(aBGM, 0, 1, 0.6, undefined, 1.0);
}