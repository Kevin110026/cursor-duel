image_alpha = min(image_alpha, (10 - age / tps) / 2);

shader_set(sh_ability_speedRail);

var textureRange = sprite_get_uvs(sprite_index, image_index);
shader_set_uniform_f(shader_get_uniform(sh_ability_speedRail, "u_texture_bounds"), textureRange[0], textureRange[1], textureRange[2], textureRange[3]);


shader_set_uniform_f(shader_get_uniform(sh_ability_speedRail, "proc"), age / (1 * tps));

var red = variable_instance_exists(id, "playerId") and !is_undefined(playerId) and playerId != obj_player.playerId;
shader_set_uniform_f(shader_get_uniform(sh_ability_speedRail, "red"), red);

draw_self();

shader_reset();