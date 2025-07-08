/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


event_inherited();

myScore = global.playerScore[playerId];

if(hp_hp <= 0)
{
	global.playerScore[1 - playerId] += 1;
	
	room_restart();
}