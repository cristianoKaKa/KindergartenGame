/// @description 鼠标释放 - 检测是否放到正确的bg_brown区域
if (!grab) return;
grab = false;
depth = -2;

// 检测物品放在了哪个box区域中
var dropped_box_id = -1;

for (var i = 0; i < 3; i++) {
    var box = global.fertilizer_boxes[i];
    if (x >= box.left && x <= box.right && y >= box.top && y <= box.bottom) {
        dropped_box_id = i + 1;  // box id为1-3
        break;
    }
}

// 如果之前已经在某个box中，需要先从原box移除
if (in_box && origin_box_id > 0) {
    var old_box = global.fertilizer_boxes[origin_box_id - 1];
    var idx = -1;
    for (var i = 0; i < array_length(old_box.instances); i++) {
        if (old_box.instances[i] == id) {
            idx = i;
            break;
        }
    }
    if (idx >= 0) {
        array_delete(old_box.instances, idx, 1);
        global.in_box_cnt -= 1;
        
        // 重新排列旧box中剩余物品的位置（从左到右）
        for (var i = 0; i < array_length(old_box.instances); i++) {
            var inst = old_box.instances[i];
            if (instance_exists(inst)) {
                inst.x = old_box.start_x + i * old_box.item_gap;
                inst.y = old_box.snap_y;
            }
        }
    }
    in_box = false;
    origin_box_id = 0;
}

// 检查是否放到了正确的box
if (dropped_box_id > 0) {
    // 检查材料类别是否匹配box (category应该等于box_id)
    if (category == dropped_box_id) {
        // 正确！放入对应的box
        var box = global.fertilizer_boxes[dropped_box_id - 1];
        
        // 添加到box
        array_push(box.instances, id);
        
        // 计算吸附位置（从左到右排列）
        var slot_index = array_length(box.instances) - 1;
        x = box.start_x + slot_index * box.item_gap;
        y = box.snap_y;
        
        in_box = true;
        origin_box_id = dropped_box_id;
        global.in_box_cnt += 1;
        
        audio_play_sound(snd_pop, 0, false);
        show_debug_message(object_get_name(object_index) + " placed in box " + string(dropped_box_id) + "! Count: " + string(global.in_box_cnt));
    } else {
        // 错误！放到了不对应的box，播放错误音效并返回初始位置
        audio_play_sound(snd_beep_error, 0, false);
        x = initial_x;
        y = initial_y;
        show_debug_message("Wrong box! " + object_get_name(object_index) + " (category=" + string(category) + ") dropped in box " + string(dropped_box_id));
    }
} else {
    // 没有放在任何box中，返回初始位置
    x = initial_x;
    y = initial_y;
    show_debug_message(object_get_name(object_index) + " returned to initial position");
}

show_debug_message("in_box_cnt: " + string(global.in_box_cnt));