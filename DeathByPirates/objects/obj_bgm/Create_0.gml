/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 6487258A
/// @DnDArgument : "soundid" "aBgm"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "aBgm"
var l6487258A_0 = aBgm;
if (!audio_is_playing(l6487258A_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 62C5A32D
	/// @DnDParent : 6487258A
	/// @DnDArgument : "soundid" "aBgm"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "aBgm"
	audio_play_sound(aBgm, 0, 1, 1.0, undefined, 1.0);
}