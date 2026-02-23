current_step = 0;

// TODO: 替换为石油藏在哪专用的教程图片
steps = [spr_oil_hide_tutorial_1,spr_oil_hide_tutorial_2,spr_oil_hide_tutorial_3];

// TODO: 替换为石油藏在哪专用的教程语音
sounds = [snd_oil_hide_1,snd_oil_hide_2,snd_oil_hide_3];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
