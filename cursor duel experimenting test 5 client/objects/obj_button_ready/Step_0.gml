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
			sent = true;
			var buffer = buffer_create(1024, buffer_fixed, 1);
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, package_type.playerChar_ability);
			for(var i = 0; i < 5; i++)
				buffer_write(buffer, buffer_u8, global.abilities_to_enum[? obj_abilitySelection.selectedAbilities[i]]);
			
			network_send_packet(obj_client.client, buffer, buffer_tell(buffer));
			
			buffer_delete(buffer);
		}
	}
}
if(sent)
	image_alpha = 0.7;
