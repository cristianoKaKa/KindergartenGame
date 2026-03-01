show_debug_message("shadow_pair game created!");

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 8;

// slot target positions (right side of the room)
global.target_sp_1_pos = [880, 130];
global.target_sp_2_pos = [1130, 130];
global.target_sp_3_pos = [864, 352];
global.target_sp_4_pos = [1120, 352];
global.target_sp_5_pos = [864, 544];
global.target_sp_6_pos = [1120, 576];
global.target_sp_7_pos = [864, 768];
global.target_sp_8_pos = [1152, 768];

// detection range (±60 pixels)
global.sp_range = 60;

// initial positions (left side of the room)
global.initial_sp_1_pos = [128, 576];
global.initial_sp_2_pos = [352, 576];
global.initial_sp_3_pos = [128, 768];
global.initial_sp_4_pos = [352, 384];
global.initial_sp_5_pos = [160, 128];
global.initial_sp_6_pos = [320, 768];
global.initial_sp_7_pos = [352, 128];
global.initial_sp_8_pos = [160, 352];
