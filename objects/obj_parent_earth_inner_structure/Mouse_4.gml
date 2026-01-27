/// @description 鼠标按下 - 开始拖拽
// 检查是否可以拖拽 (防止同时拖拽多个)
if (obj_earth_inner_structure_player.drag_num == 0) {
    obj_earth_inner_structure_player.drag_num += 1;
    grab = true;
    depth = -1;  // 拖拽时显示在最上层
    
    // 记录鼠标相对位置
    xx = x - mouse_x;
    yy = y - mouse_y;
}

