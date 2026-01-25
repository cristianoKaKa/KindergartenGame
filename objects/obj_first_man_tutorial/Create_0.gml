/// @description 开采石油第一人 - 教程初始化
current_step = 0;
// 教程步骤图片 (请替换为实际的教程精灵，如 spr_first_man_tutorial_1, spr_first_man_tutorial_2)
// 暂时使用封面图片作为占位符
steps = [spr_first_man_tutorial_1, spr_first_man_tutorial_2];
// 教程语音 (请替换为实际的教程语音，如 snd_first_man_1, snd_first_man_2)
// 暂时使用背景音乐作为占位符
sounds = [snd_first_man_1, snd_first_man_2];
descriptions = ["开采石油第一人"];
total_steps = array_length(steps);

// 教程弹窗时暂停背景音乐，播放教程语音
audio_play_sound(sounds[current_step], 0, false);
