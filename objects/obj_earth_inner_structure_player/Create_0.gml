/// @description 地球内部结构游戏初始化
show_debug_message("earth_inner_structure game created!");

// 游戏状态变量
drag_num = 0;              // 当前拖拽数量 (防止多指拖拽)
global.in_box_cnt = 0;     // 已填充的slot数量
_succeed = false;          // 游戏是否完成

// 计算需要填充的slot总数 (2等分x2 + 3等分x3 + 4等分x4 = 9)
// 实际数量由房间中放置的slot实例决定
obj_num = 0;

// 统计各类型slot数量
obj_num += instance_number(obj_earth_inner_structure_slot_2div);
obj_num += instance_number(obj_earth_inner_structure_slot_3div);
obj_num += instance_number(obj_earth_inner_structure_slot_4div);
obj_num += instance_number(obj_earth_inner_structure_slot_8div);

show_debug_message("Total slots to fill: " + string(obj_num));

// 设置各可拖拽部件的初始位置和类型
with (obj_earth_inner_structure_2_div) {
    origin_x = x;
    origin_y = y;
    part_type = "2div";
}

// 注意：obj_earth_inner_structure_5_div 实际上是3等分（命名错误）
with (obj_earth_inner_structure_5_div) {
    origin_x = x;
    origin_y = y;
    part_type = "3div";
}

with (obj_earth_inner_structure_4_div) {
    origin_x = x;
    origin_y = y;
    part_type = "4div";
}

with (obj_earth_inner_structure_8_div) {
    origin_x = x;
    origin_y = y;
    part_type = "8div";
}

// 创建教程弹窗
instance_create_layer(0, 0, "Instances", obj_earth_inner_structure_tutorial);
