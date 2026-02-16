/// @description 水力发电教程初始化
current_step = 0;

// 教程图片 - 使用新能源的教程图片作为临时占位（需要创建专门的水力发电教程图片后替换）
// 建议创建: spr_water_electry_tutorial_1, spr_water_electry_tutorial_2
steps = [spr_fertilizer_tutorial_1, spr_fertilizer_tutorial_2];

// 教程语音 - 使用新能源的语音作为临时占位（需要录制专门的水力发电语音后替换）
// 建议创建: snd_water_electry_tutorial_1, snd_water_electry_tutorial_2
sounds = [snd_make_fertilizer_1, snd_make_fertilizer_2];

descriptions = ["水力发电"];
total_steps = array_length(steps);

// 教程弹窗时暂停背景音乐，播放教程语音
// audio_stop_sound(snd_bg);
audio_play_sound(sounds[current_step], 0, false);
