/// @description 初始化拖拽属性
grab = false;
xx = 0;
yy = 0;
origin_x = x;
origin_y = y;
placed = false;

// 静态对象不可拖拽（箭头、桶1在下方区域是固定展示）
if (object_index == obj_lipstick_arrow_1
 || object_index == obj_lipstick_arrow_2
 || object_index == obj_lipstick_bucket_1) {
    draggable = false;
    target_box = 0;
} else if (object_index == obj_lipstick_bucket_2
        || object_index == obj_lipstick_fire) {
    draggable = true;
    target_box = 1;
} else {
    draggable = true;
    target_box = 2;
}
