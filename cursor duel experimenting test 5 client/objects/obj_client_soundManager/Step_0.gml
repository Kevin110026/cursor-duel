if(room == r_wait and audio_is_playing(gameLoop))
	audio_pause_sound(gameLoop);
else if(room == r_game and audio_is_paused(gameLoop))
{
	audio_sound_set_track_position(gameLoop, 0);
	audio_resume_sound(gameLoop);
}