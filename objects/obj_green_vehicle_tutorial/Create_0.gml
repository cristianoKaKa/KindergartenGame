current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_green_vehicle_tutorial_1,spr_green_vehicle_tutorial_2,spr_green_vehicle_tutorial_3];

// TODO: 录制专门的语音后替换
sounds = [snd_green_vehicle_1,snd_green_vehicle_2,snd_green_vehicle_3];

descriptions = ["绿色出行工具"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
