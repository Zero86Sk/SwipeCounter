///Button Script
if (global.Exit == true)
or (global.Win == true)
or (global.NameEntery1 == true)
or (global.NameEntery3 == true)
or (global.NameEntery4 == true)
{
    exit;
}

image_index = 0;

if (position_meeting(mouse_x, mouse_y, self))
{
    if (device_mouse_check_button(0, global.MouseLeft))
    {
        image_index = 1;        
        Time++;   
    }
    
    if (device_mouse_check_button_released(0, global.MouseLeft))
    {
        Time = 0;
    }
}

if (Time == 30)
{
    global.NameEntery2 = true;    
    Time = 0;
	input_start = true;
}

if (global.NameEntery2 == true)
{
    Cursor = "|";
    depth = -5000;
	instance_deactivate_object(obj_macros);
    
	if (input_start == true)
	{
		switch (os_type)
		{
		case os_android:
		case os_ios:
			keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, true)
			break;
		}
		input_start = false;
	}
		
    if(string_length(keyboard_string) <= InputLength)
    {
        global.txt_P2Name = string_copy(keyboard_string, 1, InputLength);
    }   

    if (keyboard_check_pressed(vk_enter))
	or (os_is_paused())
	//or (keyboard_check_pressed(vk_backspace))
    or (device_mouse_check_button_pressed(0, global.MouseLeft))
    {
        if(string_length(keyboard_string) < MinLength)
        {
            global.txt_P2Name = "Player 2";
        }

		input_finish = true;
		
		if (input_finish == true)
		{	
			input_finish = false;
			keyboard_string = "";
			scr_save_settings();
			global.NameEntery2 = false;
			instance_activate_object(obj_macros);
			
			switch (os_type)
			{
			case os_android:
			case os_ios:
				keyboard_virtual_hide();
				break;
			}
		} 
	}
}
else
{
	Cursor = "";
	depth = -10;
}

///Play Sound
if (position_meeting(mouse_x, mouse_y, self))
{
    if (device_mouse_check_button_pressed(0, global.MouseLeft))
    {
        if (!audio_is_playing(global.SndClick))
        {
			audio_play_sound(global.SndClick, 10, false);
        }
    }
}

///FadeIn
if (FadeIn == true)
{
    if (image_alpha < 1)
    {
	    image_alpha += 0.05;
	    alarm[0] = 2;
    }
}

///FadeOut
if (FadeOut == true)
{
    if (image_alpha > 1)
    {
	    image_alpha -= 0.05;
	    alarm[0] = 2;
    }
}
