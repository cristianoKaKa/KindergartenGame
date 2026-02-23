/// @description 组装油罐车教程初始化
current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_assemble_truck_tutorial_1, spr_assemble_truck_tutorial_2];

// TODO: 录制专门的语音后替换
sounds = [snd_assemble_truck_1,snd_assemble_truck_2];

descriptions = ["组装油罐车"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
