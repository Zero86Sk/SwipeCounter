if (Rolling == true)
{
	if (image_angle > 0)
	{
		image_angle -= 15;
		image_index = irandom(19);
	}
	
	//Play Sound
	if (!audio_is_playing(snd_dice))
    {
	    audio_play_sound(snd_dice, 10, false);
    }
}

if (Rolled == true)
{
	///Destroy Object
    if (device_mouse_check_button_pressed(0, global.MouseLeft))
    {
		alarm[1] = 15;
    }  
}