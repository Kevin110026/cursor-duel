bonuses = ds_map_create();
names = ds_map_create();
bonus_idCounter = 0;

newBonus = function(name, bonus){
	bonuses[? bonus_idCounter] = bonus;
	names[? bonus_idCounter] = name;
	return bonus_idCounter++;
}

deleteBonus = function(id)
{
	ds_map_delete(bonuses, id);
	ds_map_delete(names, id);
}