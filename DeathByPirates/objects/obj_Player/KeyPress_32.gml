/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2631946B
/// @DnDArgument : "var" "global.acidInInventory"
/// @DnDArgument : "op" "2"
if(global.acidInInventory > 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 58247B51
	/// @DnDParent : 2631946B
	/// @DnDArgument : "code" "/// @description Acid effects$(13_10)$(13_10)//Increment and decrement proper values$(13_10)hp = hp_max$(13_10)global.acidInInventory -= 1$(13_10)global.currentAcidCapacity = global.acidMaxCapacity$(13_10)$(13_10)//Hallucination stuff$(13_10)global.acidLevel += 1$(13_10)$(13_10)if (global.acidLevel == 1) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl1");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)	}$(13_10)}$(13_10)else if (global.acidLevel == 2) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl2_1");$(13_10)	var lay_id_2 = layer_get_id("effect_Acidlvl2_2");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)		layer_set_visible(lay_id_2, true);$(13_10)	}$(13_10)}$(13_10)else if (global.acidLevel == 3) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl3");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)	}$(13_10)}$(13_10)else if (global.acidLevel == 4) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl4");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)	}$(13_10)}$(13_10)else if (global.acidLevel == 5) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl5");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)	}$(13_10)}$(13_10)else if (global.acidLevel == 6) {$(13_10)	var lay_id = layer_get_id("effect_Acidlvl6");$(13_10)	if !layer_get_visible(lay_id)$(13_10)	{$(13_10)	$(13_10)	    layer_set_visible(lay_id, true);$(13_10)	}$(13_10)}$(13_10)	$(13_10)	"
	/// @description Acid effects
	
	//Increment and decrement proper values
	hp = hp_max
	global.acidInInventory -= 1
	global.currentAcidCapacity = global.acidMaxCapacity
	
	//Hallucination stuff
	global.acidLevel += 1
	
	if (global.acidLevel == 1) {
		var lay_id = layer_get_id("effect_Acidlvl1");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
		}
	}
	else if (global.acidLevel == 2) {
		var lay_id = layer_get_id("effect_Acidlvl2_1");
		var lay_id_2 = layer_get_id("effect_Acidlvl2_2");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
			layer_set_visible(lay_id_2, true);
		}
	}
	else if (global.acidLevel == 3) {
		var lay_id = layer_get_id("effect_Acidlvl3");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
		}
	}
	else if (global.acidLevel == 4) {
		var lay_id = layer_get_id("effect_Acidlvl4");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
		}
	}
	else if (global.acidLevel == 5) {
		var lay_id = layer_get_id("effect_Acidlvl5");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
		}
	}
	else if (global.acidLevel == 6) {
		var lay_id = layer_get_id("effect_Acidlvl6");
		if !layer_get_visible(lay_id)
		{
		
		    layer_set_visible(lay_id, true);
		}
	}
}