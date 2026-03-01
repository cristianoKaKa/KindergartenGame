/// @description 拼装钻柱游戏初始化
show_debug_message("drill_string game created!");
// audio_play_sound(snd_bg, 0, true);

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 5;  // 5个钻柱部件

// 目标区域设置 - 右侧图纸区域 (钻柱从上到下紧密排列: part1 -> part2 -> part3 -> part4 -> part5)
// 目标区域x范围: 1050-1250，y范围根据每个部件位置设定
// 检测范围设置得宽松一些，方便幼儿操作

// Part1 目标位置 (顶部，104x250) - y: 90-340
global.target_1_left = 1050;
global.target_1_right = 1250;
global.target_1_top = 70;
global.target_1_bottom = 360;
global.target_1_pos = [1100, 90];

// Part2 目标位置 (第2个，125x69) - y: 310-379
global.target_2_left = 1050;
global.target_2_right = 1250;
global.target_2_top = 290;
global.target_2_bottom = 400;
global.target_2_pos = [1088, 310];

// Part3 目标位置 (第3个，60x140) - y: 369-509
global.target_3_left = 1050;
global.target_3_right = 1250;
global.target_3_top = 350;
global.target_3_bottom = 530;
global.target_3_pos = [1120, 369];

// Part4 目标位置 (第4个，60x173) - y: 500-673
global.target_4_left = 1050;
global.target_4_right = 1250;
global.target_4_top = 480;
global.target_4_bottom = 700;
global.target_4_pos = [1120, 500];

// Part5 目标位置 (底部，80x63) - y: 670-733
global.target_5_left = 1050;
global.target_5_right = 1250;
global.target_5_top = 650;
global.target_5_bottom = 760;
global.target_5_pos = [1110, 670];

// 各部件初始位置 (用于放错时返回)
global.initial_pos_1 = [64, 0];
global.initial_pos_2 = [320, 128];
global.initial_pos_3 = [480, 96];
global.initial_pos_4 = [224, 64];
global.initial_pos_5 = [608, 128];
