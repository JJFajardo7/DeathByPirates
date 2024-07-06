/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3059B9F3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "screen_shake_func"
/// @DnDArgument : "arg" "_time"
/// @DnDArgument : "arg_1" "_magnitude"
/// @DnDArgument : "arg_2" "_fade"
function screen_shake_func(_time, _magnitude, _fade) 
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3CBFAFD1
	/// @DnDApplyTo : {obj_screenshake}
	/// @DnDParent : 3059B9F3
	with(obj_screenshake) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 219FBEC6
		/// @DnDInput : 4
		/// @DnDParent : 3CBFAFD1
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "_time"
		/// @DnDArgument : "expr_2" "_magnitude"
		/// @DnDArgument : "expr_3" "_fade"
		/// @DnDArgument : "var" "shake"
		/// @DnDArgument : "var_1" "shake_time"
		/// @DnDArgument : "var_2" "shake_magnitude"
		/// @DnDArgument : "var_3" "shake_fade"
		shake = true;
		shake_time = _time;
		shake_magnitude = _magnitude;
		shake_fade = _fade;
	}
}