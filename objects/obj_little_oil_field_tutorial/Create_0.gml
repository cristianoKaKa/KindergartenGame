/// @description 小小的油田教程初始化
current_step = 0;

// 教程步骤图片 - 需要创建专用的教程sprite: spr_little_oil_field_tutorial
// 暂时使用现有的sprite作为占位符，请替换为专用教程图片
steps = [spr_little_oil_field_tutorial_1,spr_little_oil_field_tutorial_2,spr_little_oil_field_tutorial_3];  // TODO: 替换为 spr_little_oil_field_tutorial

// 教程语音 - 需要创建专用的教程声音: snd_little_oil_field_tutorial  
// 内容: "请将每种材料按照从小到大的顺序排列到右侧的目标位置"
sounds = [snd_little_oil_field_1,snd_little_oil_field_2,snd_little_oil_field_3];  // TODO: 替换为 snd_little_oil_field_tutorial

descriptions = [
    "请将油田、工人、磕头机、油花按从小到大的顺序排列"
];

total_steps = array_length(steps);

// 播放教程语音
audio_play_sound(sounds[current_step], 0, false);