/// @description 拼装钻柱教程初始化
current_step = 0;
steps = [spr_drill_string_tutorial_1, spr_drill_string_tutorial_2];  // 使用封面图片作为教程图片（如需专门教程图片请替换）
sounds = [snd_drill_string_1, snd_drill_string_2]; // 教程语音（暂时使用背景音乐，创建专用声音后请替换为 snd_drill_string_tutorial）
descriptions = ["拼装钻柱"];
total_steps = array_length(steps);
// 教程弹窗时暂停背景音乐，播放教程语音
//audio_stop_sound(snd_bg);
audio_play_sound(sounds[current_step], 0, false);
