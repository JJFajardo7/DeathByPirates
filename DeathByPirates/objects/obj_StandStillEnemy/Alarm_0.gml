/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 126767B5
/// @DnDArgument : "x" "-70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Player"
/// @DnDSaveInfo : "object" "obj_Player"
var l126767B5_0 = instance_place(x + -70, y + 70, [obj_Player]);
if ((l126767B5_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4BF081FF
	/// @DnDParent : 126767B5
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_mushroombullet"
	/// @DnDSaveInfo : "objectid" "obj_mushroombullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_mushroombullet);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7FC0B7E7
	/// @DnDParent : 126767B5
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 53069B30
/// @DnDArgument : "x" "-70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Player"
/// @DnDSaveInfo : "object" "obj_Player"
var l53069B30_0 = instance_place(x + -70, y + -70, [obj_Player]);
if ((l53069B30_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5251DC99
	/// @DnDParent : 53069B30
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_mushroombullet"
	/// @DnDSaveInfo : "objectid" "obj_mushroombullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_mushroombullet);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0D743365
	/// @DnDParent : 53069B30
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4AF0282B
/// @DnDArgument : "x" "70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Player"
/// @DnDSaveInfo : "object" "obj_Player"
var l4AF0282B_0 = instance_place(x + 70, y + -70, [obj_Player]);
if ((l4AF0282B_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68AD6E82
	/// @DnDParent : 4AF0282B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_mushroombullet"
	/// @DnDSaveInfo : "objectid" "obj_mushroombullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_mushroombullet);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 32B6A2C3
	/// @DnDParent : 4AF0282B
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7E9E819E
/// @DnDArgument : "x" "70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Player"
/// @DnDSaveInfo : "object" "obj_Player"
var l7E9E819E_0 = instance_place(x + 70, y + 70, [obj_Player]);
if ((l7E9E819E_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 40B081E4
	/// @DnDParent : 7E9E819E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_mushroombullet"
	/// @DnDSaveInfo : "objectid" "obj_mushroombullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_mushroombullet);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2E88784C
	/// @DnDParent : 7E9E819E
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);
}