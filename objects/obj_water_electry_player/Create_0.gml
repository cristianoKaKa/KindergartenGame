/// @description 水力发电游戏初始化
show_debug_message("water_electry game created!");

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 10;  // 10个可拖动部件

// ==================== 目标位置设置 ====================
// 每个对象的目标位置（slot位置，即room中摆放的位置）
// 检测范围设置为目标位置周围50像素，方便幼儿操作

// 1. reservoir (水库) - 目标位置: (192, 416)
global.target_reservoir_left = 142;
global.target_reservoir_right = 242;
global.target_reservoir_top = 366;
global.target_reservoir_bottom = 466;
global.target_reservoir_pos = [192, 416];

// 2. pipe_1 (水管1) - 目标位置: (320, 480)
global.target_pipe_1_left = 270;
global.target_pipe_1_right = 370;
global.target_pipe_1_top = 430;
global.target_pipe_1_bottom = 530;
global.target_pipe_1_pos = [320, 480];

// 3. dam (大坝) - 目标位置: (448, 416)
global.target_dam_left = 398;
global.target_dam_right = 498;
global.target_dam_top = 366;
global.target_dam_bottom = 466;
global.target_dam_pos = [448, 416];

// 4. alternator_1 (发电机1) - 目标位置: (704, 384)
global.target_alternator_1_left = 654;
global.target_alternator_1_right = 754;
global.target_alternator_1_top = 334;
global.target_alternator_1_bottom = 434;
global.target_alternator_1_pos = [704, 384];

// 5. alternator_2 (发电机2) - 目标位置: (749, 544)
global.target_alternator_2_left = 699;
global.target_alternator_2_right = 799;
global.target_alternator_2_top = 494;
global.target_alternator_2_bottom = 594;
global.target_alternator_2_pos = [749, 544];

// 6. pipe_2 (水管2) - 目标位置: (864, 608)
global.target_pipe_2_left = 814;
global.target_pipe_2_right = 914;
global.target_pipe_2_top = 558;
global.target_pipe_2_bottom = 658;
global.target_pipe_2_pos = [864, 608];

// 7. river (河流) - 目标位置: (960, 672)
global.target_river_left = 910;
global.target_river_right = 1010;
global.target_river_top = 622;
global.target_river_bottom = 722;
global.target_river_pos = [960, 672];

// 8. wire_1 (电线1) - 目标位置: (1280, 388)
global.target_wire_1_left = 1230;
global.target_wire_1_right = 1330;
global.target_wire_1_top = 338;
global.target_wire_1_bottom = 438;
global.target_wire_1_pos = [1280, 388];

// 9. wire_2 (电线2) - 目标位置: (1280, 306)
global.target_wire_2_left = 1230;
global.target_wire_2_right = 1330;
global.target_wire_2_top = 256;
global.target_wire_2_bottom = 356;
global.target_wire_2_pos = [1280, 306];

// 10. tower (电塔) - 目标位置: (1280, 480)
global.target_tower_left = 1230;
global.target_tower_right = 1330;
global.target_tower_top = 430;
global.target_tower_bottom = 530;
global.target_tower_pos = [1280, 480];

// ==================== 初始位置设置 ====================
// 对象的初始位置（根据room中实际摆放的位置）
global.initial_pos_reservoir = [64, 32];
global.initial_pos_pipe_1 = [544, 0];
global.initial_pos_dam = [224, 0];
global.initial_pos_alternator_1 = [320, 0];
global.initial_pos_alternator_2 = [832, 128];
global.initial_pos_pipe_2 = [608, 64];
global.initial_pos_river = [1184, 0];
global.initial_pos_wire_1 = [1120, 160];
global.initial_pos_wire_2 = [1344, 160];
global.initial_pos_tower = [928, 32];

