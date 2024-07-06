/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 38303A67
/// @DnDInput : 3
/// @DnDArgument : "var" "hovering"
/// @DnDArgument : "function" "position_meeting"
/// @DnDArgument : "arg" "device_mouse_x_to_gui(0)"
/// @DnDArgument : "arg_1" "device_mouse_y_to_gui(0)"
/// @DnDArgument : "arg_2" "id"
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5783CD07
/// @DnDInput : 2
/// @DnDArgument : "expr" "hovering"
/// @DnDArgument : "expr_1" "mouse_check_button_pressed(mb_left)"
if(hovering && mouse_check_button_pressed(mb_left))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B62EA36
	/// @DnDParent : 5783CD07
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "clicked"
	clicked = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 70901313
/// @DnDArgument : "expr" "mouse_check_button_released(mb_left)"
if(mouse_check_button_released(mb_left))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CB22C27
	/// @DnDParent : 70901313
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "clicked"
	clicked = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 365F9FC8
	/// @DnDParent : 70901313
	/// @DnDArgument : "expr" "hovering"
	if(hovering)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5AA28F40
		/// @DnDParent : 365F9FC8
		/// @DnDArgument : "function" "activate_button"
		activate_button();
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 75F2220E
/// @DnDArgument : "expr" "clicked"
if(clicked)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B427135
	/// @DnDParent : 75F2220E
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "image_index"
	image_index = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A28A8A7
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 15A24BD3
	/// @DnDParent : 2A28A8A7
	/// @DnDArgument : "expr" "hovering"
	if(hovering)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A912783
		/// @DnDParent : 15A24BD3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_index"
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6F8318C8
	/// @DnDParent : 2A28A8A7
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12F4096E
		/// @DnDParent : 6F8318C8
		/// @DnDArgument : "var" "image_index"
		image_index = 0;
	}
}