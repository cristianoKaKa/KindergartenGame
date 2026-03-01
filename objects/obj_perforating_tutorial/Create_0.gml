/// @description 射孔完井对对碰教程初始化
current_step = 0;

// TODO: 替换为perforating专用的教程图片
steps = [spr_perforating_tutorial_1, spr_perforating_tutorial_2];

// TODO: 替换为perforating专用的教程语音
sounds = [snd_perforating_1, snd_perforating_2];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
