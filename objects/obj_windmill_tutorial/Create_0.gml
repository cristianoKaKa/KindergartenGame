current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_windmill_tutorial_1,spr_windmill_tutorial_2,spr_windmill_tutorial_3];

// TODO: 录制专门的语音后替换
sounds = [snd_windmill_1,snd_windmill_2,snd_windmill_3];

total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
