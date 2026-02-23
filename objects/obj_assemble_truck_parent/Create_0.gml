/// @description 组装油罐车 - 可拖拽部件父类初始化
grab = false;
xx = 0;
yy = 0;
placed = false;
initial_x = x;
initial_y = y;
target_x = 0;
target_y = 0;

// 自动判断当前零件属于哪一辆车（用于匹配对应bg）
match_id = 0;
var _n = object_get_name(object_index);
if (string_pos("_truck_1_", _n) > 0) match_id = 1;
else if (string_pos("_truck_2_", _n) > 0) match_id = 2;
else if (string_pos("_truck_3_", _n) > 0) match_id = 3;
else if (string_pos("_truck_4_", _n) > 0) match_id = 4;
