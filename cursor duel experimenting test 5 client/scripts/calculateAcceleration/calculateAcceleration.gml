// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function calculateAcceleration(maxA, maxVel, velX, velY, deltaX, deltaY){
	var deltaDist = point_distance(0, 0, deltaX, deltaY);
	var idealVel;
	if(deltaDist > maxA)
	{
		//	t = v / a
	
		//	cause the world of game is based on "tick", not smooth time
		//  v*t/2 + v/2 = d
		//  v*t + v = 2d
		//  v^2/a + v - 2d = 0
		idealVel = (-1 + sqrt(1 + 8 * deltaDist / maxA)) / (2 / maxA);
		idealVel = min(maxVel, idealVel);
	}
	else
	{
		idealVel = deltaDist;
	}
	
	var idealVelX = idealVel * deltaX / deltaDist;
	var idealVelY = idealVel * deltaY / deltaDist;
	if(is_nan(idealVelX)) idealVelX = 0;
	if(is_nan(idealVelY)) idealVelY = 0;
	var accX = idealVelX - velX;
	var accY = idealVelY - velY;
	var len = sqrt(sqr(accX) + sqr(accY)) / maxA;
	len = max(1, len);
	accX /= len;
	accY /= len;
	
	return [accX, accY];
}