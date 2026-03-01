/// @description 新能源智力游戏教程初始化
// 华容道滑块拼图教程

current_step = 0;
// TODO: 创建专用教程图片精灵 spr_new_energy_int_tutorial 后替换下面的精灵
// 暂时使用 spr_fire_afraid_tutorial 作为占位符
steps = [spr_new_energy_int_tutorial_1,spr_new_energy_int_tutorial_1];

// TODO: 创建专用教程语音 snd_new_energy_int 后替换下面的声音
// 暂时使用 snd_fire_afraid 作为占位符
sounds = [snd_new_energy_int_1,snd_new_energy_int_2];

descriptions = ["新能源智力游戏"];
total_steps = array_length(steps);

// 播放教程语音
audio_play_sound(sounds[current_step], 0, false);
