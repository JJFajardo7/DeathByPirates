/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 31EA3F94
/// @DnDArgument : "soundid" "aCoins"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "aCoins"
var l31EA3F94_0 = aCoins;
if (!audio_is_playing(l31EA3F94_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5492C941
	/// @DnDParent : 31EA3F94
	/// @DnDArgument : "soundid" "aCoins"
	/// @DnDSaveInfo : "soundid" "aCoins"
	audio_play_sound(aCoins, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 19D98B6B
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.coins"
global.coins += 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FB9B8DE
instance_destroy();