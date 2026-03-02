/// @description 石油变口红教程初始化
current_step = 0;

// TODO: 替换为lipstick专用的教程图片
steps = [spr_lipstick_tutorial_1, spr_lipstick_tutorial_2,spr_lipstick_tutorial_3];

// TODO: 替换为lipstick专用的教程语音
sounds = [snd_lipstick_1, snd_lipstick_2,snd_lipstick_3];

descriptions = ["石油变口红的过程"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
