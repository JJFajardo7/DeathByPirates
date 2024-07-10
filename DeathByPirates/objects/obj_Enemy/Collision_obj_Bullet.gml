/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7BA4F5D6
/// @DnDArgument : "soundid" "aGashedEnemy"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "aGashedEnemy"
var l7BA4F5D6_0 = aGashedEnemy;
if (!audio_is_playing(l7BA4F5D6_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A70105F
	/// @DnDParent : 7BA4F5D6
	/// @DnDArgument : "soundid" "aGashedEnemy"
	/// @DnDSaveInfo : "soundid" "aGashedEnemy"
	audio_play_sound(aGashedEnemy, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 595203E6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "color" "$FF030377"
effect_create_below(0, x + 0, y + 0, 0, $FF030377 & $ffffff);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5269D83A
/// @DnDInput : 3
/// @DnDArgument : "function" "screen_shake_func"
/// @DnDArgument : "arg" "20"
/// @DnDArgument : "arg_1" "5"
/// @DnDArgument : "arg_2" ".3"
screen_shake_func(20, 5, .3);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F71F3FD
/// @DnDArgument : "code" "if (!dead) {$(13_10)	dead = true;$(13_10)	instance_destroy(other);$(13_10)}"
if (!dead) {
	dead = true;
	instance_destroy(other);
}