/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 171F7E1C
/// @DnDArgument : "var" "shake"
/// @DnDArgument : "value" "true"
if(shake == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 355FBD91
	/// @DnDParent : 171F7E1C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shake_time"
	shake_time += -1;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7B688FD4
	/// @DnDInput : 2
	/// @DnDParent : 171F7E1C
	/// @DnDArgument : "var" "_xval"
	/// @DnDArgument : "option" "-shake_magnitude"
	/// @DnDArgument : "option_1" "shake_magnitude"
	_xval = choose(-shake_magnitude, shake_magnitude);

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7E91A498
	/// @DnDInput : 2
	/// @DnDParent : 171F7E1C
	/// @DnDArgument : "var" "_yval"
	/// @DnDArgument : "option" "-shake_magnitude"
	/// @DnDArgument : "option_1" "shake_magnitude"
	_yval = choose(-shake_magnitude, shake_magnitude);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DA06BC6
	/// @DnDInput : 3
	/// @DnDParent : 171F7E1C
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[1]"
	/// @DnDArgument : "arg_1" "_xval"
	/// @DnDArgument : "arg_2" "_yval"
	camera_set_view_pos(view_camera[1], _xval, _yval);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60BEB6DC
	/// @DnDParent : 171F7E1C
	/// @DnDArgument : "var" "shake_time"
	/// @DnDArgument : "op" "3"
	if(shake_time <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B927420
		/// @DnDParent : 60BEB6DC
		/// @DnDArgument : "expr" "-shake_fade"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "shake_magnitude"
		shake_magnitude += -shake_fade;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22B9E7E5
		/// @DnDParent : 60BEB6DC
		/// @DnDArgument : "var" "shake_magnitude"
		/// @DnDArgument : "op" "3"
		if(shake_magnitude <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 34EA637E
			/// @DnDInput : 3
			/// @DnDParent : 22B9E7E5
			/// @DnDArgument : "function" "camera_set_view_pos"
			/// @DnDArgument : "arg" "view_camera[1]"
			/// @DnDArgument : "arg_1" "0"
			/// @DnDArgument : "arg_2" "0"
			camera_set_view_pos(view_camera[1], 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 247A4B01
			/// @DnDParent : 22B9E7E5
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "shake"
			shake = false;
		}
	}
}