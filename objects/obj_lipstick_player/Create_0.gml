/// @description 石油变口红游戏初始化
show_debug_message("lipstick game initialized");

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;

// 可拖拽对象数量: bucket_2, fire, match_1, match_2,
// lipstick_1, lipstick_2, canddle_1, canddle_2, stone_1~stone_8 = 14个
obj_num = 14;

// Box2网格排列计数器
box2_next_slot = 0;

// 创建教程弹窗
instance_create_layer(0, 0, "Instances", obj_lipstick_tutorial);
