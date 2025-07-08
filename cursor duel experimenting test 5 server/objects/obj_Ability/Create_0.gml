/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

clients = ds_list_create();
ds_list_add(clients, caster.socket);
event_inherited();

aimIns = undefined;
charge_charge = 0;
cooldown_countdown = cooldown_cooldown;

lastVariable[? "slot"] = undefined;
lastVariable[? "charge_max"] = undefined;
lastVariable[? "charge_charge"] = undefined;
lastVariable[? "cooldown_cooldown"] = undefined;
lastVariable[? "cooldown_countdown"] = undefined;

function cast(iPlayer)
{
	if(charge_charge >= 1 and iPlayer.energy_energy >= cost)
	{
		charge_charge--;
		iPlayer.energy_energy -= cost;
		var ins = instance_create_layer(iPlayer.x, iPlayer.y, layer_get_id("attacks"), oCast, {caster: iPlayer});
		return ins;
	}
}

function aim(iPlayer)
{
	var ins = instance_create_layer(0, 0, layer_get_id("alerts"), oAim, {caster: iPlayer});
	aimIns = ins;
	return ins;
}

function stopAim()
{
	if(!is_undefined(aimIns))
	{
		instance_destroy(aimIns);
		aimIns = undefined;
	}
}