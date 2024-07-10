/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 40D2D677
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 63138459
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3ADA5CC3
	/// @DnDParent : 63138459
	/// @DnDArgument : "function" "room_goto"
	/// @DnDArgument : "arg" "Upgrades"
	room_goto(Upgrades);
}