/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 268092B4
/// @DnDInput : 2
/// @DnDArgument : "assignee" "_event"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "assignee_1" "_pad"
/// @DnDArgument : "assignee_temp_1" "1"
/// @DnDArgument : "var" "async_load"
/// @DnDArgument : "key" ""event_type""
/// @DnDArgument : "key_1" ""pad_index""
var _event = ds_map_find_value(async_load, "event_type");
var _pad = ds_map_find_value(async_load, "pad_index");

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 518EEA78
/// @DnDArgument : "msg" ""Event =" + _event"
show_debug_message(string("Event =" + _event));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 69F78299
/// @DnDArgument : "msg" ""Pad=" + string(_pad)"
show_debug_message(string("Pad=" + string(_pad)));

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3744C15F
/// @DnDArgument : "expr" "_event"
var l3744C15F_0 = _event;
switch(l3744C15F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 270B77E0
	/// @DnDParent : 3744C15F
	/// @DnDArgument : "const" ""gamepad discovered""
	case "gamepad discovered":
		/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
		/// @DnDVersion : 1
		/// @DnDHash : 002DEB11
		/// @DnDParent : 270B77E0
		/// @DnDArgument : "gp" "_pad"
		/// @DnDArgument : "deadzone" "0.5"
		gamepad_set_axis_deadzone(_pad, 0.5);
	
		/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Button_Threshold
		/// @DnDVersion : 1
		/// @DnDHash : 4509B206
		/// @DnDParent : 270B77E0
		/// @DnDArgument : "gp" "_pad"
		/// @DnDArgument : "threshold" "0.1"
		gamepad_set_button_threshold(_pad, 0.1);
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1CC01870
		/// @DnDParent : 270B77E0
		/// @DnDArgument : "obj" "player[_pad]"
		/// @DnDArgument : "not" "1"
		var l1CC01870_0 = false;
		l1CC01870_0 = instance_exists(player[_pad]);
		if(!l1CC01870_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A0DDA13
			/// @DnDApplyTo : {obj_Player}
			/// @DnDParent : 1CC01870
			/// @DnDArgument : "expr" "_pad"
			/// @DnDArgument : "var" "pad_Num"
			with(obj_Player) {
			pad_Num = _pad;
			
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 12B4B9CF
	/// @DnDParent : 3744C15F
	/// @DnDArgument : "const" ""gamepad lost""
	case "gamepad lost":
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 30D2B298
		/// @DnDParent : 12B4B9CF
		/// @DnDArgument : "obj" "player[_pad]"
		var l30D2B298_0 = false;
		l30D2B298_0 = instance_exists(player[_pad]);
		if(l30D2B298_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41FCA4A0
			/// @DnDApplyTo : player[_pad]
			/// @DnDParent : 30D2B298
			with(player[_pad]) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A3B21C8
		/// @DnDApplyTo : {obj_Player}
		/// @DnDParent : 12B4B9CF
		/// @DnDArgument : "expr" "noone"
		/// @DnDArgument : "var" "player[_pad]"
		with(obj_Player) {
		player[_pad] = noone;
		
		}
		break;
}