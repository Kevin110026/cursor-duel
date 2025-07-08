age += 1;
if(age >= 10 * tps)
	instance_destroy();

if(speedBoostId == -1 and place_meeting(x, y, caster.id))
{
	speedBoostId = caster.maxVel.PB.newBonus("speedRail", 100);
	accBoostId = caster.Acc.PB.newBonus("speedRail", 100);
	
	networkPack_playSoundAll(sn_buff);
}
else if(speedBoostId != -1 and !place_meeting(x, y, caster.id))
{
	caster.maxVel.PB.deleteBonus(speedBoostId);
	caster.Acc.PB.deleteBonus(accBoostId);
	
	speedBoostId = -1;
	accBoostId = -1;
	
	networkPack_playSoundAll(sn_calcelBuff);
}