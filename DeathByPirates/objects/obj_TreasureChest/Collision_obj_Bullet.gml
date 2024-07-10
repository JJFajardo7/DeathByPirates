/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1484B205
/// @DnDArgument : "soundid" "aChestBreak"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "aChestBreak"
var l1484B205_0 = aChestBreak;
if (!audio_is_playing(l1484B205_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1EE3CCAD
	/// @DnDParent : 1484B205
	/// @DnDArgument : "soundid" "aChestBreak"
	/// @DnDSaveInfo : "soundid" "aChestBreak"
	audio_play_sound(aChestBreak, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1B3B6418
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_Coin"
/// @DnDSaveInfo : "objectid" "obj_Coin"
instance_create_layer(x + 0, y + 0, "Instances", obj_Coin);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5181ADB0
instance_destroy();