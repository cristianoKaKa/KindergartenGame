current_step = 0;

// TODO: 替换为专门的中国石油标志教程图片
steps = [spr_china_petronium_icon_tutorial_1, spr_china_petronium_icon_tutorial_2];

// TODO: 替换为专门的中国石油标志教程语音
sounds = [snd_china_petronium_1, snd_china_petronium_2];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
