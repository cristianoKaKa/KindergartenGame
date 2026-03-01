/// @description 小小的油田 - 可拖拽物品父类初始化
grab = false;

xx = 0;
yy = 0;

box_idx = 0;
pos_idx = 0;

origin_box_id = 0;
origin_x = x;       // 上一次x位置
origin_y = y;       // 上一次y位置
initial_x = x;      // 初始x位置
initial_y = y;      // 初始y位置
in_box = false;

// ===== 根据object_index设置材料类型和尺寸 =====
// part_type: 1-4 对应四种材料
// size: 100/150/200 对应小/中/大

part_type = 0;  // 材料类型 (1=油田, 2=工人, 3=磕头机, 4=油花)
size = 0;       // 尺寸 (100=小, 150=中, 200=大)

// Part1 (油田)
if (object_index == obj_little_oil_field_part1_100) { part_type = 1; size = 100; }
else if (object_index == obj_little_oil_field_part1_150) { part_type = 1; size = 150; }
else if (object_index == obj_little_oil_field_part1_200) { part_type = 1; size = 200; }
// Part2 (工人)
else if (object_index == obj_little_oil_field_part2_100) { part_type = 2; size = 100; }
else if (object_index == obj_little_oil_field_part2_150) { part_type = 2; size = 150; }
else if (object_index == obj_little_oil_field_part2_200) { part_type = 2; size = 200; }
// Part3 (磕头机)
else if (object_index == obj_little_oil_field_part3_100) { part_type = 3; size = 100; }
else if (object_index == obj_little_oil_field_part3_150) { part_type = 3; size = 150; }
else if (object_index == obj_little_oil_field_part3_200) { part_type = 3; size = 200; }
// Part4 (油花)
else if (object_index == obj_little_oil_field_part4_100) { part_type = 4; size = 100; }
else if (object_index == obj_little_oil_field_part4_150) { part_type = 4; size = 150; }
else if (object_index == obj_little_oil_field_part4_200) { part_type = 4; size = 200; }

show_debug_message("Created: " + object_get_name(object_index) + " part_type=" + string(part_type) + " size=" + string(size));
