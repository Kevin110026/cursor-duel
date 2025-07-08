if(charge_charge < charge_max)
{
	cooldown_countdown -= 1/tps;
	if(cooldown_countdown <= 0)
	{
		charge_charge++;
		cooldown_countdown += cooldown_cooldown;
	}
}
if(charge_charge >= charge_max)
{
	cooldown_countdown = cooldown_cooldown;
}