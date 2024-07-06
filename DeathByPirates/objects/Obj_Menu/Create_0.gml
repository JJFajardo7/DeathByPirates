/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C9C1DEF
/// @DnDArgument : "code" "/// GUI Setup$(13_10)//gui_width = display_get_gui_width();$(13_10)//gui_height = display_get_gui_height();$(13_10)//gui_margin = 32;$(13_10)$(13_10)//menu_x = gui_width + 200;$(13_10)//menu_y = gui_height - gui_margin;$(13_10)//menu_x_target = gui_width - gui_margin;$(13_10)//menu_speed = 25; //lower is faster$(13_10)//menu_font = fmenu;$(13_10)//menu_item_height = font_get_size(fmenu); $(13_10)//menu_committed = -1; $(13_10)//menu_control = true;$(13_10)$(13_10)//menu[2] = "Start Game";$(13_10)//menu[1] = "Instructions";$(13_10)//menu[0] = "Quit";$(13_10)$(13_10)//menu_items = array_length_1d(menu);$(13_10)//menu_cursor = 2; $(13_10)$(13_10)$(13_10)$(13_10)sequence_id = layer_sequence_create("MenuSequence", display_get_gui_width()/2, display_get_gui_height()/2, seq_menu);$(13_10)$(13_10)"
/// GUI Setup
//gui_width = display_get_gui_width();
//gui_height = display_get_gui_height();
//gui_margin = 32;

//menu_x = gui_width + 200;
//menu_y = gui_height - gui_margin;
//menu_x_target = gui_width - gui_margin;
//menu_speed = 25; //lower is faster
//menu_font = fmenu;
//menu_item_height = font_get_size(fmenu); 
//menu_committed = -1; 
//menu_control = true;

//menu[2] = "Start Game";
//menu[1] = "Instructions";
//menu[0] = "Quit";

//menu_items = array_length_1d(menu);
//menu_cursor = 2; 



sequence_id = layer_sequence_create("MenuSequence", display_get_gui_width()/2, display_get_gui_height()/2, seq_menu);