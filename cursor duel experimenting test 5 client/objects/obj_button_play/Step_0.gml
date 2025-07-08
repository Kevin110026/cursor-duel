if(image_index == 0 and mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	image_index = 1;
}
if(image_index == 1)
{
	if(mouse_check_button_released(mb_left))
	{
		image_index = 0;
		if(position_meeting(mouse_x, mouse_y, id))
		{
			obj_client.askConnecting();
		}
	}
}

if(obj_client.connected >= 0)
{
	instance_create_layer(x, y, "Instances", obj_button_ready);
	instance_destroy();
}