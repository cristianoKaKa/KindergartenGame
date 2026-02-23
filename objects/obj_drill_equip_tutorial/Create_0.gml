/// @description 钻井设备教程初始化
current_step = 0;

// TODO: 创建专门的教程图片后替换
steps = [spr_drill_equip_tutorial_1, spr_drill_equip_tutorial_2];

// TODO: 录制专门的语音后替换
sounds = [snd_drill_equip_1, snd_drill_equip_2];

descriptions = ["钻井设备"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
