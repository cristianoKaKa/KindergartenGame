/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
// 遍历可能的触摸点（假设支持多点触控）
for (var i = 0; i < 5; i++) { // 最多检测5个触摸点
    // 检测触摸按下
    if (device_mouse_check_button_pressed(i, mb_left)) {
        var tx = device_mouse_x(i);
        var ty = device_mouse_y(i);
        
        // 检查触摸点是否在对象范围内
        if (position_meeting(tx, ty, id)) { // 使用精确的碰撞检测
            dragging = true;
            touch_id = i; // 锁定当前触摸点
            drag_offset_x = tx - x;
            drag_offset_y = ty - y;
            break; // 只处理第一个有效触摸点
        }
    }
}
// 检测触摸释放
if (dragging && device_mouse_check_button_released(touch_id, mb_left)) {
    dragging = false;
    touch_id = -1;
}

// 更新位置
if (dragging) {
    // 使用锁定的触摸点ID获取坐标
    var tx = device_mouse_x(touch_id);
    var ty = device_mouse_y(touch_id);
    
    // 更新对象位置（确保坐标系正确）
    x = tx - drag_offset_x;
    y = ty - drag_offset_y;
}