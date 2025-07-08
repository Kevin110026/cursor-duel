player_data_map = ds_map_create();
player_data_map_last = ds_map_create();
name = "";
playerId = -1;
myScore = 0;
myBuffer = buffer_create(1024, buffer_fixed, 1);
myMap = ds_map_create();
ready = false;