///Draw
draw_self();

//String
draw_set_font(global.FontSymbols);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(global.C1);
draw_text(x, y, Button);

if (Time >= 1.00)
{
	draw_set_font(global.FontSmall);
	
	if (global.MagicMode == true)
	{
		draw_sprite_ext(spr_button_dark, 0, room_width/2, room_height/1.2, 2, 2, 0, -1, 1);
	} else draw_sprite_ext(spr_button_light, 0, room_width/2, room_height/1.2, 2, 2, 0, -1, 1);

	draw_text(room_width/2, room_height/1.2, global.txt_Resetting_Room);
}

