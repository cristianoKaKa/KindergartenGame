/// @description 衍生品分类教程初始化
current_step = 0;

// TODO: 替换为oil_class专用的教程图片
steps = [spr_oil_class_tutorial_1, spr_oil_class_tutorial_2];

// TODO: 替换为oil_class专用的教程语音
sounds = [snd_oil_class_1, snd_oil_class_2];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
