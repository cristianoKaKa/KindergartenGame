current_step = 0;

steps = [spr_shadow_pair_tutorial_1, spr_shadow_pair_tutorial_2];
sounds = [snd_shadow_pair_1, snd_shadow_pair_2];

descriptions = ["影子配对"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
