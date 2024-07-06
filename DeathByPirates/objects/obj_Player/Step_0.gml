/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65A628D5
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)//Check health$(13_10)if(hp <= 0) {$(13_10)	room_goto(StartScreen)$(13_10)}$(13_10)$(13_10)//Get input$(13_10)var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"));$(13_10)var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"));$(13_10)$(13_10)if(keyboard_check(ord("D")) && (!(keyboard_check(ord("W"))) || !(keyboard_check(ord("S"))))){$(13_10)	image_angle = 90;$(13_10)}$(13_10)else if(keyboard_check(ord("A")) && (!(keyboard_check(ord("W"))) || !(keyboard_check(ord("S"))))){$(13_10)	image_angle = -90;$(13_10)}$(13_10)if(keyboard_check(ord("A")) && keyboard_check(ord("W"))){$(13_10)	image_angle = -135;$(13_10)}$(13_10)if(keyboard_check(ord("A")) && keyboard_check(ord("S"))){$(13_10)	image_angle = -45;$(13_10)}$(13_10)if(keyboard_check(ord("D")) && keyboard_check(ord("W"))){$(13_10)	image_angle = 135;$(13_10)}$(13_10)if(keyboard_check(ord("D")) && keyboard_check(ord("S"))){$(13_10)	image_angle = 45;$(13_10)}$(13_10)$(13_10)//Put correct sprite$(13_10)if (moveX != 0 || moveY != 0) {$(13_10)	//sprite_index = spr_PlayerRun;$(13_10)	 $(13_10)} else {$(13_10)	//sprite_index = spr_PlayerIdle;$(13_10)	$(13_10)}$(13_10)$(13_10)//Face character in correct position$(13_10)if (moveX != 0) image_xscale = moveX;$(13_10)$(13_10)//Calculate hsp and vsp$(13_10)hsp = moveX * move_speed$(13_10)vsp = moveY * move_speed$(13_10)$(13_10)//Collision for: Wall$(13_10)if (place_meeting(x + hsp*2, y, obj_Wall)) {$(13_10)	$(13_10)	while(!place_meeting(x + sign(hsp)*2, y, obj_Wall)) {$(13_10)		$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	$(13_10)	hsp = 0$(13_10)}$(13_10)$(13_10)//Collision for: Crate $(13_10)if (place_meeting(x + hsp*2, y, obj_TreasureChest)) {$(13_10)	$(13_10)	while(!place_meeting(x + sign(hsp)*2, y, obj_TreasureChest)) {$(13_10)		$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	$(13_10)	hsp = 0$(13_10)}$(13_10)$(13_10)x += hsp$(13_10)$(13_10)if(place_meeting(x, y+vsp*2, obj_Wall)){$(13_10)	while(!place_meeting(x, y+sign(vsp)*2, obj_Wall)){$(13_10)		y += sign(vsp);	$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)if(place_meeting(x,( y+vsp)*2, obj_TreasureChest)){$(13_10)	while(!place_meeting(x, y+sign(vsp)*2, obj_TreasureChest)){$(13_10)		y += sign(vsp);	$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y += vsp$(13_10)$(13_10)$(13_10)//Gun stuff$(13_10)cd--;$(13_10)$(13_10)if (cd <= 0 && mouse_check_button(mb_left)) {$(13_10)	cd = cdValue;$(13_10)	audio_play_sound(aBullet, 1, false);$(13_10)	with (instance_create_layer(x, y, "bullets", obj_Bullet)) {$(13_10)		direction = obj_Gun.image_angle;$(13_10)		speed = 8;$(13_10)	}$(13_10)}"
/// @description Insert description here
// You can write your code in this editor

//Check health
if(hp <= 0) {
	room_goto(StartScreen)
}

//Get input
var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(keyboard_check(ord("D")) && (!(keyboard_check(ord("W"))) || !(keyboard_check(ord("S"))))){
	image_angle = 90;
}
else if(keyboard_check(ord("A")) && (!(keyboard_check(ord("W"))) || !(keyboard_check(ord("S"))))){
	image_angle = -90;
}
if(keyboard_check(ord("A")) && keyboard_check(ord("W"))){
	image_angle = -135;
}
if(keyboard_check(ord("A")) && keyboard_check(ord("S"))){
	image_angle = -45;
}
if(keyboard_check(ord("D")) && keyboard_check(ord("W"))){
	image_angle = 135;
}
if(keyboard_check(ord("D")) && keyboard_check(ord("S"))){
	image_angle = 45;
}

//Put correct sprite
if (moveX != 0 || moveY != 0) {
	//sprite_index = spr_PlayerRun;
	 
} else {
	//sprite_index = spr_PlayerIdle;
	
}

//Face character in correct position
if (moveX != 0) image_xscale = moveX;

//Calculate hsp and vsp
hsp = moveX * move_speed
vsp = moveY * move_speed

//Collision for: Wall
if (place_meeting(x + hsp*2, y, obj_Wall)) {
	
	while(!place_meeting(x + sign(hsp)*2, y, obj_Wall)) {
		
		x += sign(hsp)
	}
	
	hsp = 0
}

//Collision for: Crate 
if (place_meeting(x + hsp*2, y, obj_TreasureChest)) {
	
	while(!place_meeting(x + sign(hsp)*2, y, obj_TreasureChest)) {
		
		x += sign(hsp)
	}
	
	hsp = 0
}

x += hsp

if(place_meeting(x, y+vsp*2, obj_Wall)){
	while(!place_meeting(x, y+sign(vsp)*2, obj_Wall)){
		y += sign(vsp);	
	}
	vsp = 0;
}

if(place_meeting(x,( y+vsp)*2, obj_TreasureChest)){
	while(!place_meeting(x, y+sign(vsp)*2, obj_TreasureChest)){
		y += sign(vsp);	
	}
	vsp = 0;
}

y += vsp


//Gun stuff
cd--;

if (cd <= 0 && mouse_check_button(mb_left)) {
	cd = cdValue;
	audio_play_sound(aBullet, 1, false);
	with (instance_create_layer(x, y, "bullets", obj_Bullet)) {
		direction = obj_Gun.image_angle;
		speed = 8;
	}
}

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 14A3314C
/// @DnDArgument : "var" "_hmove"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "gp" "pad_Num"
var _hmove = gamepad_is_connected(pad_Num) ? gamepad_axis_value(pad_Num, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 536F1C92
/// @DnDArgument : "var" "_vmove"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "gp" "pad_Num"
/// @DnDArgument : "axis" "gp_axislv"
var _vmove = gamepad_is_connected(pad_Num) ? gamepad_axis_value(pad_Num, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5685CAE9
/// @DnDArgument : "var" "_hmove"
/// @DnDArgument : "not" "1"
if(!(_hmove == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7E5E0F10
	/// @DnDParent : 5685CAE9
	/// @DnDArgument : "value" "_hmove*4"
	/// @DnDArgument : "value_relative" "1"
	x += _hmove*4;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46DAA2EE
/// @DnDArgument : "var" "_vmove"
/// @DnDArgument : "not" "1"
if(!(_vmove == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5D7C2DCB
	/// @DnDParent : 46DAA2EE
	/// @DnDArgument : "value" "_vmove*4"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += _vmove*4;
}

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 14D8C269
/// @DnDArgument : "var" "_trig"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "gp" "pad_Num"
/// @DnDArgument : "trigger" "gp_shoulderrb"
var _trig = gamepad_is_connected(pad_Num) ? gamepad_button_value(pad_Num, gp_shoulderrb) : 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 38779B1A
/// @DnDArgument : "var" "_rate"
/// @DnDArgument : "value" "1-_trig"
var _rate = 1-_trig;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5089C1AA
/// @DnDArgument : "expr" "can_shoot && (_rate <1)"
if(can_shoot && (_rate <1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 031DBC94
	/// @DnDParent : 5089C1AA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Bullet"
	/// @DnDSaveInfo : "objectid" "obj_Bullet"
	var _inst = instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 2E2ED282
	/// @DnDApplyTo : _inst
	/// @DnDParent : 5089C1AA
	with(_inst) {
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
		/// @DnDVersion : 1.1
		/// @DnDHash : 345EE45A
		/// @DnDApplyTo : other
		/// @DnDParent : 2E2ED282
		/// @DnDArgument : "var" "h"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "pad_Num"
		/// @DnDArgument : "axis" "gp_axisrh"
		with(other) {
		var h = gamepad_is_connected(pad_Num) ? gamepad_axis_value(pad_Num, gp_axisrh) : 0;
		}
	
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
		/// @DnDVersion : 1.1
		/// @DnDHash : 36A0F93A
		/// @DnDApplyTo : other
		/// @DnDParent : 2E2ED282
		/// @DnDArgument : "var" "v"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "pad_Num"
		/// @DnDArgument : "axis" "gp_axisrv"
		with(other) {
		var v = gamepad_is_connected(pad_Num) ? gamepad_axis_value(pad_Num, gp_axisrv) : 0;
		}
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6ED97BD2
		/// @DnDParent : 2E2ED282
		/// @DnDArgument : "x" "h"
		/// @DnDArgument : "y" "v"
		direction = point_direction(x, y, h, v);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 321FFFB1
		/// @DnDParent : 2E2ED282
		/// @DnDArgument : "speed" "5"
		speed = 5;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 709D2F60
	/// @DnDParent : 5089C1AA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_shoot"
	can_shoot = false;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1852F0B6
	/// @DnDInput : 2
	/// @DnDParent : 5089C1AA
	/// @DnDArgument : "var" "_count"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "max"
	/// @DnDArgument : "arg" "5"
	/// @DnDArgument : "arg_1" "room_speed*_rate"
	var _count = max(5, room_speed*_rate);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7802AF32
	/// @DnDParent : 5089C1AA
	/// @DnDArgument : "steps" "_count"
	alarm_set(0, _count);
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 1721B2F0
/// @DnDArgument : "gp" "pad_Num"
/// @DnDArgument : "btn" "gp_face2"
var l1721B2F0_0 = pad_Num;
var l1721B2F0_1 = gp_face2;
if(gamepad_is_connected(l1721B2F0_0) && gamepad_button_check_pressed(l1721B2F0_0, l1721B2F0_1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32B20E50
	/// @DnDParent : 1721B2F0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Bullet"
	/// @DnDSaveInfo : "objectid" "obj_Bullet"
	var _inst = instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 17A8614F
	/// @DnDApplyTo : _inst
	/// @DnDParent : 1721B2F0
	with(_inst) {
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 40EC8C04
		/// @DnDParent : 17A8614F
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 153B9DAF
		/// @DnDParent : 17A8614F
		/// @DnDArgument : "speed" "5"
		speed = 5;
	}
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 28022906
/// @DnDArgument : "gp" "pad_Num"
/// @DnDArgument : "btn" "gp_face3"
var l28022906_0 = pad_Num;
var l28022906_1 = gp_face3;
if(gamepad_is_connected(l28022906_0) && gamepad_button_check_pressed(l28022906_0, l28022906_1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 192960A2
	/// @DnDParent : 28022906
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Bullet"
	/// @DnDSaveInfo : "objectid" "obj_Bullet"
	var _inst = instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 28379D3A
	/// @DnDApplyTo : _inst
	/// @DnDParent : 28022906
	with(_inst) {
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 152DD187
		/// @DnDParent : 28379D3A
		/// @DnDArgument : "direction" "180"
		direction = 180;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 27627CCE
		/// @DnDParent : 28379D3A
		/// @DnDArgument : "speed" "5"
		speed = 5;
	}
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 245FB368
/// @DnDArgument : "gp" "pad_Num"
var l245FB368_0 = pad_Num;
var l245FB368_1 = gp_face4;
if(gamepad_is_connected(l245FB368_0) && gamepad_button_check_pressed(l245FB368_0, l245FB368_1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5911A997
	/// @DnDParent : 245FB368
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Bullet"
	/// @DnDSaveInfo : "objectid" "obj_Bullet"
	var _inst = instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 5815DA09
	/// @DnDApplyTo : _inst
	/// @DnDParent : 245FB368
	with(_inst) {
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C104DDA
		/// @DnDParent : 5815DA09
		/// @DnDArgument : "direction" "90"
		direction = 90;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 31CE3176
		/// @DnDParent : 5815DA09
		/// @DnDArgument : "speed" "5"
		speed = 5;
	}
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 52D5227F
/// @DnDArgument : "gp" "pad_Num"
/// @DnDArgument : "btn" "gp_face1"
var l52D5227F_0 = pad_Num;
var l52D5227F_1 = gp_face1;
if(gamepad_is_connected(l52D5227F_0) && gamepad_button_check_pressed(l52D5227F_0, l52D5227F_1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1D6EF11B
	/// @DnDParent : 52D5227F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Bullet"
	/// @DnDSaveInfo : "objectid" "obj_Bullet"
	var _inst = instance_create_layer(x + 0, y + 0, "Instances", obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6818EE3D
	/// @DnDApplyTo : _inst
	/// @DnDParent : 52D5227F
	with(_inst) {
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 46E4BA1C
		/// @DnDParent : 6818EE3D
		/// @DnDArgument : "direction" "270"
		direction = 270;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3055AF9B
		/// @DnDParent : 6818EE3D
		/// @DnDArgument : "speed" "5"
		speed = 5;
	}
}