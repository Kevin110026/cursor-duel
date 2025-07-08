selectionSquares = ds_list_create();
for(var i = 0; i < 5; i ++)
{
	ds_list_add(selectionSquares, 
		instance_create_layer(0, 0, "Instances", obj_abilitySelectionSquare, {slot: i}));
}


holding = false;


selectedAbilities = [
	obj_abilitySelection_ability,
	obj_abilitySelection_ability,
	obj_abilitySelection_ability,
	obj_abilitySelection_ability,
	obj_abilitySelection_ability,
];

abilitiesInstances = ds_list_create();
for(var i = 0; i < array_length(global.abilities) - 1; i++)
{
	ds_list_add(abilitiesInstances, 
		instance_create_layer(0, 0, "Instances", global.abilities[i+1], {number: i}));
}
