/// @description 鼠标释放 - 检测是否放到正确的box
if (!grab) return;  // 避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;

// 检测物品放在了哪个box中
var dropped_box_id = -1;  // -1表示没有放在任何box中

for (var i = 0; i < 4; i++) {
    var box = global.boxes[i];
    if (x >= box.left && x <= box.right && y >= box.top && y <= box.bottom) {
        dropped_box_id = i + 1;  // box id为1-4
        break;
    }
}

// 如果已经在某个box中，需要先从原box移除
if (in_box && origin_box_id > 0) {
    var old_box = global.boxes[origin_box_id - 1];
    // 从旧box的items和instances数组中移除
    var idx = -1;
    for (var i = 0; i < array_length(old_box.instances); i++) {
        if (old_box.instances[i] == id) {
            idx = i;
            break;
        }
    }
    if (idx >= 0) {
        array_delete(old_box.items, idx, 1);
        array_delete(old_box.instances, idx, 1);
        global.in_box_cnt -= 1;
        
        // 重新排列旧box中剩余物品的位置
        for (var i = 0; i < array_length(old_box.instances); i++) {
            var inst = old_box.instances[i];
            if (instance_exists(inst)) {
                inst.y = old_box.start_y + i * old_box.item_gap;
            }
        }
    }
    in_box = false;
    origin_box_id = 0;
}

// 检查是否放到了正确的box
if (dropped_box_id > 0) {
    // 检查材料类型是否匹配box (part_type应该等于box_id)
    if (part_type == dropped_box_id) {
        // 正确！放入对应的box
        var box = global.boxes[dropped_box_id - 1];
        
        // 检查这个box是否已经有3个物品了
        if (array_length(box.items) >= 3) {
            // box已满，返回初始位置
            audio_play_sound(snd_beep_error, 0, false);
            x = initial_x;
            y = initial_y;
            show_debug_message("Box " + string(dropped_box_id) + " is full!");
        } else {
            // 添加到box
            array_push(box.items, size);
            array_push(box.instances, id);
            
            // 计算吸附位置 (按顺序从上到下排列)
            var slot_index = array_length(box.items) - 1;
            x = box.snap_x;
            y = box.start_y + slot_index * box.item_gap;
            
            in_box = true;
            origin_box_id = dropped_box_id;
            global.in_box_cnt += 1;
            
            audio_play_sound(snd_pop, 0, false);
            show_debug_message(object_get_name(object_index) + " placed in box " + string(dropped_box_id) + "! Count: " + string(global.in_box_cnt));
        }
    } else {
        // 错误！放到了其他材料的box
        audio_play_sound(snd_beep_error, 0, false);
        x = initial_x;
        y = initial_y;
        show_debug_message("Wrong box! " + object_get_name(object_index) + " (part_type=" + string(part_type) + ") dropped in box " + string(dropped_box_id));
    }
} else {
    // 没有放在任何box中，返回初始位置
    audio_play_sound(snd_pop, 0, false);
    x = initial_x;
    y = initial_y;
    show_debug_message(object_get_name(object_index) + " returned to initial position");
}

show_debug_message("in_box_cnt: " + string(global.in_box_cnt));
