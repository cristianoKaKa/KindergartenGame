/// @description 创造堆肥 - 可拖拽物品父类初始化
grab = false;

xx = 0;
yy = 0;

origin_box_id = 0;
initial_x = x;
initial_y = y;
in_box = false;

// ===== 根据object_index设置材料类别 =====
// category: 1=paper(纸类), 2=food(食物), 3=leave(树叶)
// paper -> obj_make_fertilizer_bg_brown_1
// food  -> obj_make_fertilizer_bg_brown_2
// leave -> obj_make_fertilizer_bg_brown_3
category = 0;

// Paper items (paper_2 ~ paper_7) -> category 1
if (object_index == obj_make_fertilizer_paper_2) { category = 1; }
else if (object_index == obj_make_fertilizer_paper_3) { category = 1; }
else if (object_index == obj_make_fertilizer_paper_4) { category = 1; }
else if (object_index == obj_make_fertilizer_paper_5) { category = 1; }
else if (object_index == obj_make_fertilizer_paper_6) { category = 1; }
else if (object_index == obj_make_fertilizer_paper_7) { category = 1; }
// Food items (food_2 ~ food_7) -> category 2
else if (object_index == obj_make_fertilizer_food_2) { category = 2; }
else if (object_index == obj_make_fertilizer_food_3) { category = 2; }
else if (object_index == obj_make_fertilizer_food_4) { category = 2; }
else if (object_index == obj_make_fertilizer_food_5) { category = 2; }
else if (object_index == obj_make_fertilizer_food_6) { category = 2; }
else if (object_index == obj_make_fertilizer_food_7) { category = 2; }
// Leave items (leave_2 ~ leave_6) -> category 3
else if (object_index == obj_make_fertilizer_leave_2) { category = 3; }
else if (object_index == obj_make_fertilizer_leave_3) { category = 3; }
else if (object_index == obj_make_fertilizer_leave_4) { category = 3; }
else if (object_index == obj_make_fertilizer_leave_5) { category = 3; }
else if (object_index == obj_make_fertilizer_leave_6) { category = 3; }

show_debug_message("Created: " + object_get_name(object_index) + " category=" + string(category));
