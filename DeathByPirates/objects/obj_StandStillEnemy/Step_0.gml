/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BD7B0F1
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "3"
if(alarm[0] <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 73FA47C9
	/// @DnDParent : 2BD7B0F1
	/// @DnDArgument : "steps" "5"
	alarm_set(0, 5);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7BAF6D6D
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 737DD86C
	/// @DnDParent : 7BAF6D6D
	/// @DnDArgument : "steps" "-1"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, -1 + alarm_get(0));
}