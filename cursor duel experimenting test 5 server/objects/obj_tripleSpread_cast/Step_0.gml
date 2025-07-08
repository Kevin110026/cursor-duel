tick += 1;
x = caster.x;
y = caster.y;

if(tick >= 0.18 * tps)
{
	tick -= 0.18 * tps;
	stage += 1;
	fire();
	
	if(stage >= 3)
		instance_destroy();
}