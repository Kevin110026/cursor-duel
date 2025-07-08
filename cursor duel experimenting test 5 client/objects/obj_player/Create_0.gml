player_data_map = ds_map_create();
player_data_buffer = buffer_create(1024, buffer_fixed, 1);
player_data_map_last = ds_map_create();
changed_player_data = ds_map_create();
name = obj_client.player_name;
playerId = -1;
myScore = 0;