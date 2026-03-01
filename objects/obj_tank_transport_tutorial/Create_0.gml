/// @description 油罐运输教程初始化
current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_tank_transport_tutorial_1, spr_tank_transport_tutorial_2];

// TODO: 录制专门的语音后替换
sounds = [snd_tank_transport_1, snd_tank_transport_2];

descriptions = ["油罐运输"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
