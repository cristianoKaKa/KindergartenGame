/// @description 衍生品分类游戏初始化
show_debug_message("oil class game initialized");

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = -1;

box_category = ["", "", ""];
box_count = [0, 0, 0];

instance_create_layer(0, 0, "Instances", obj_oil_class_tutorial);
