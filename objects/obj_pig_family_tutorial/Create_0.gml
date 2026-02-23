current_step = 0;

// TODO: 替换为石油藏在哪专用的教程图片
steps = [spr_pig_family_tutorial_1];

// TODO: 替换为石油藏在哪专用的教程语音
sounds = [snd_pig_family_1];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
