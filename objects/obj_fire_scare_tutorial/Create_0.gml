/// @description 怕火的油罐车教程初始化
current_step = 0;

// TODO: 替换为fire_scare专用的教程图片
steps = [spr_fire_scare_tutorial_1, spr_fire_scare_tutorial_2];

// TODO: 替换为fire_scare专用的教程语音
sounds = [snd_fire_scare_1, snd_fire_scare_2];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
