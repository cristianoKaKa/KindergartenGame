/// @description 抽油机拼图教程初始化
current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_oil_engine_tutorial_1,spr_oil_engine_tutorial_2];

// TODO: 录制专门的语音后替换
sounds = [snd_oil_engine_1,snd_oil_engine_2];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
