if(!holding)
{
	if(is_undefined(selectedSquare))
	{
		x = sprite_width * 0.6 + number * (sprite_width * 1.2);
		y = room_height * 2 / 3;
	}
	else
	{
		x = selectedSquare.x;
		y = selectedSquare.y;
	}
	
	if(mouse_check_button_pressed(mb_left) and 
		position_meeting(mouse_x, mouse_y, id) and 
		!obj_abilitySelection.holding)
	{
		holding = true;
		obj_abilitySelection.holding = true;
		last_mouseX = mouse_x;
		last_mouseY = mouse_y;
		if(!is_undefined(selectedSquare))
		{
			selectedSquare.image_alpha = 0.3;
			selectedSquare.ability = obj_abilitySelection_ability;
			selectedSquare = undefined;
		}
	}
}
else
{
	x += mouse_x - last_mouseX;
	y += mouse_y - last_mouseY;
	last_mouseX = mouse_x;
	last_mouseY = mouse_y;
	
	if(!is_undefined(selectedSquare))
		selectedSquare.image_alpha = 0.3;
	selectedSquare = undefined;
		
	var collidSquares = ds_list_create();
	instance_place_list(x, y, obj_abilitySelectionSquare, collidSquares, true);
	for(var i = 0; i < ds_list_size(collidSquares); i++)
	{
		var theSquare = ds_list_find_value(collidSquares, i);
		if(theSquare.ability == obj_abilitySelection_ability)
		{
			selectedSquare = theSquare;
			break;
		}
	}
	ds_list_destroy(collidSquares);
	if(!is_undefined(selectedSquare))
		selectedSquare.image_alpha = 1;
	
	if(mouse_check_button_released(mb_left))
	{
		holding = false;
		obj_abilitySelection.holding = false;
		if(!is_undefined(selectedSquare))
		{
			selectedSquare.image_alpha = 0.8;
			selectedSquare.ability = object_index;
		}
	}
}

if(holding)
	depth = -2;
else
	depth = -1;
	