/// @description 检测游戏是否完成

if (global.in_box_cnt != obj_num) {
    _succeed = false;
}

if (!_succeed && global.in_box_cnt == obj_num) {
    // 所有12个物品都已放入box，检查是否按从小到大排列
    var all_correct = true;
    
    // 检查每个box中的物品顺序
    for (var i = 0; i < 4; i++) {
        var box = global.boxes[i];
        var items = box.items;
        
        // 每个box应该有3个物品
        if (array_length(items) != 3) {
            all_correct = false;
            break;
        }
        
        // 检查是否从小到大排列 (100 < 150 < 200)
        // items[0]是最先放入的(最上面)，items[2]是最后放入的(最下面)
        // 正确顺序应该是: items[0]=100, items[1]=150, items[2]=200
        if (items[0] != 100 || items[1] != 150 || items[2] != 200) {
            all_correct = false;
            break;
        }
    }
    
    if (all_correct) {
        // 顺序正确，游戏完成！
        congrats();
        audio_play_sound(snd_co_succeed, 0, false);
        _succeed = true;
        show_debug_message("小小的油田游戏完成！所有物品都按从小到大排列！");
    } else {
        // 顺序错误，显示提示
        audio_play_sound(snd_beep_error, 0, false);
        show_debug_message("排列顺序不正确！请按从小到大的顺序排列！");
        
        // 显示错误提示弹窗 - 创建一个简单的提示
        // 可以创建一个专门的提示对象，这里先用debug message
        // TODO: 可以添加一个提示弹窗对象
        
        // 重置所有物品到初始位置，让玩家重新排列
        for (var i = 0; i < 4; i++) {
            var box = global.boxes[i];
            // 将box中的物品返回初始位置
            for (var j = 0; j < array_length(box.instances); j++) {
                var inst = box.instances[j];
                if (instance_exists(inst)) {
                    inst.x = inst.initial_x;
                    inst.y = inst.initial_y;
                    inst.origin_box_id = 0;
                    inst.in_box = false;
                }
            }
            // 清空box的物品记录
            box.items = [];
            box.instances = [];
        }
        global.in_box_cnt = 0;
    }
}