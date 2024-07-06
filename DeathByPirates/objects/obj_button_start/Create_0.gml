/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 60BFB797
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7138F60E
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6AE376A2
	/// @DnDParent : 7138F60E
	/// @DnDArgument : "function" "room_goto"
	/// @DnDArgument : "arg" "Level"
	room_goto(Level);
}