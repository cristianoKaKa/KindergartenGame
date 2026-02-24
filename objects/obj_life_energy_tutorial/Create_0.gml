current_step = 0;

// TODO: replace with life_energy tutorial images
steps = [spr_life_energy_tutorial_1, spr_life_energy_tutorial_2];

// TODO: replace with life_energy tutorial sounds
sounds = [snd_life_energy_tutorial_1, snd_life_energy_tutorial_2];

descriptions = ["生活中的能源"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
