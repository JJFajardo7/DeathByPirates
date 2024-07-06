/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 151A1F17
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 77B8B3DB
/// @DnDArgument : "obj" "obj_Player"
/// @DnDSaveInfo : "obj" "obj_Player"
var l77B8B3DB_0 = false;
l77B8B3DB_0 = instance_exists(obj_Player);
if(l77B8B3DB_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 209AEA4C
	/// @DnDParent : 77B8B3DB
	/// @DnDArgument : "x" "obj_Player.x"
	/// @DnDArgument : "y" "obj_Player.y"
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 1265282B
	/// @DnDParent : 77B8B3DB
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}