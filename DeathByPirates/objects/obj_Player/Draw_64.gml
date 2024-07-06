/// @desc health bar

//draw_sprite(spr_healthbarbackground,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_Healthbar,0,20,20,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_Healthbarborder,0,20,20);

//Track on screen how much acid player has consumed
draw_text(60, 50, "Coins: " + string(global.coins));
























