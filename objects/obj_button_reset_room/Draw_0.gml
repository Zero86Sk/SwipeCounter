///Draw
draw_self();

//String
draw_set_font(fnt_wingdings_3_b25);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(global.C1);
draw_text(x, y, Button);

if (Time >= 1.00)
{
	draw_set_font(fnt_small);
	draw_sprite_ext(spr_btn, 0, room_width/2, room_height/1.2, 2, 2, 0, -1, 1);
	draw_text(room_width/2, room_height/1.2, "Hold the button for 5 sec"
										   + "\nto reset the current game.");
}

