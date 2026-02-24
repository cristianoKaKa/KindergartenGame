current_step = 0;

// TODO: 后续替换为 car_class 专用教程图片
steps = [spr_car_class_tutorial_1,spr_car_class_tutorial_2];

// TODO: 后续替换为 car_class 专用语音
sounds = [snd_tutorial_1,snd_tutorial_2];

descriptions = ["新能源汽车分类"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);

