/// @description 地球内部结构 - 教程初始化
current_step = 0;

// 教程步骤图片 (暂时使用占位符，后续替换为实际的教程精灵)
// TODO: 替换为 spr_earth_inner_structure_tutorial_1, spr_earth_inner_structure_tutorial_2 等
steps = [spr_earth_inner_structure_tutorial_1,spr_earth_inner_structure_tutorial_2,spr_earth_inner_structure_tutorial_3];  // 占位符

// 教程语音 (暂时使用占位符，后续替换为实际的教程语音)
// TODO: 替换为 snd_earth_inner_structure_tutorial_1 等
sounds = [snd_earth_inner_structure_1,snd_earth_inner_structure_2,snd_earth_inner_structure_3];  // 占位符

descriptions = ["地球内部结构拼图游戏"];
total_steps = array_length(steps);

// 教程弹窗时播放教程语音
if (array_length(sounds) > 0 && sounds[current_step] != undefined) {
    audio_play_sound(sounds[current_step], 0, false);
}
