var dX = tarX - x;
var dY = tarY - y;

var acc = calculateAcceleration(Acc.value, maxVel.value, velX, velY, dX, dY);

velX += acc[0];
velY += acc[1];

x += velX;
y += velY;

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

if(x == 0)
	velX = max(0, velX);
else if(x == room_width)
	velX = min(0, velX);
if(y == 0)
	velY = max(0, velY);
else if(y == room_height)
	velY = min(0, velY);

direction = point_direction(0, 0, velX, velY);

iframe_iframe = max(0, iframe_iframe - 1);


if(sqrt(sqr(velX) + sqr(velY)) > 0.3)
	image_angle = point_direction(0, 0, velX, velY);
	

for(var i = 0; i < 5; i++)
{
	if(ck_key_released(key_abilities_assign[i]))
	{
		abilities_instance[i].cast(id);
		abilities_instance[i].stopAim();
	}
}