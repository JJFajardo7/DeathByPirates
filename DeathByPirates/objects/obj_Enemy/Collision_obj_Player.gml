/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27D48A3F
/// @DnDArgument : "var" "alarm_get(0)"
/// @DnDArgument : "op" "3"
if(alarm_get(0) <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C78E90B
	/// @DnDParent : 27D48A3F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playerHit"
	playerHit = true;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 76EFD636
	/// @DnDParent : 27D48A3F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)obj_Player.hp -= 20"
	/// @description Execute Code
	obj_Player.hp -= 20

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 69FF97B6
	/// @DnDParent : 27D48A3F
	/// @DnDArgument : "steps" "120"
	alarm_set(0, 120);
}