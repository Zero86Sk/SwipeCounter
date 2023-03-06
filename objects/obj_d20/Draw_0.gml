//Draw Rectangle
draw_set_color(global.CBack);
scr_draw_rectangle();

draw_set_font(fnt_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(global.CWhite);

draw_self();

if	(Rolling == true)
{
	draw_text(x, y + room_height/6, "");
}

if	(Rolled == true)
{
	draw_text(x, room_height/1.3, string(image_index + 1));
}