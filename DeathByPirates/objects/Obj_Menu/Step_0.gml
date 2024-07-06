/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 201C1B35
/// @DnDArgument : "code" "/// Control Menu$(13_10)$(13_10)//Item ease in$(13_10)//menu_x += (menu_x_target - menu_x) / menu_speed;$(13_10)$(13_10)//controls$(13_10)//if (menu_control){$(13_10)//	if (keyboard_check_pressed(ord("W"))){$(13_10)//		menu_cursor++;$(13_10)//		if (menu_cursor >= menu_items) menu_cursor = 0;$(13_10)//	}$(13_10)//	if (keyboard_check_pressed(ord("S"))){$(13_10)//		menu_cursor--;$(13_10)//		if (menu_cursor = 0) menu_cursor = menu_items - 1;$(13_10)//	}$(13_10)//	if (keyboard_check_pressed(vk_enter)){$(13_10)//		menu_x_target = gui_width+200;$(13_10)//		menu_committed = menu_cursor;$(13_10)//		menu_control = false;$(13_10)//	}$(13_10)//}$(13_10)$(13_10)//if (menu_x > gui_width+150) && (menu_committed != -1){$(13_10)//	switch (menu_committed){$(13_10)//		case 2: default: room_goto(Level); break;$(13_10)//		case 1: room_goto(Instructions); break;$(13_10)//		case 0: game_end(); break;$(13_10)//	}$(13_10)//}$(13_10)"
/// Control Menu

//Item ease in
//menu_x += (menu_x_target - menu_x) / menu_speed;

//controls
//if (menu_control){
//	if (keyboard_check_pressed(ord("W"))){
//		menu_cursor++;
//		if (menu_cursor >= menu_items) menu_cursor = 0;
//	}
//	if (keyboard_check_pressed(ord("S"))){
//		menu_cursor--;
//		if (menu_cursor = 0) menu_cursor = menu_items - 1;
//	}
//	if (keyboard_check_pressed(vk_enter)){
//		menu_x_target = gui_width+200;
//		menu_committed = menu_cursor;
//		menu_control = false;
//	}
//}

//if (menu_x > gui_width+150) && (menu_committed != -1){
//	switch (menu_committed){
//		case 2: default: room_goto(Level); break;
//		case 1: room_goto(Instructions); break;
//		case 0: game_end(); break;
//	}
//}