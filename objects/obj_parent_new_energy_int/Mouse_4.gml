/// @description 点击瓷砖尝试移动
// 华容道滑块拼图 - 点击移动逻辑

// 如果正在移动中，不响应点击
if (is_moving) exit;

// 如果教程弹窗还在显示，不响应点击
if (instance_exists(obj_new_energy_int_tutorial)) exit;

// 获取当前瓷砖的网格坐标
var _my_gx = grid_index mod 3;
var _my_gy = grid_index div 3;

// 获取空位的网格坐标
var _empty_gx = global.nei_empty_pos mod 3;
var _empty_gy = global.nei_empty_pos div 3;

// 检查空位是否与当前瓷砖相邻 (上下左右)
var _can_move = false;
var _dx = abs(_my_gx - _empty_gx);
var _dy = abs(_my_gy - _empty_gy);

// 只有当空位在正上、正下、正左、正右时才能移动
if ((_dx == 1 && _dy == 0) || (_dx == 0 && _dy == 1)) {
    _can_move = true;
}

if (_can_move) {
    show_debug_message("Tile " + string(tile_num) + " moving from index " + string(grid_index) + " to " + string(global.nei_empty_pos));
    
    // 播放移动音效
    audio_play_sound(snd_pop, 0, false);
    
    // 计算目标位置
    target_x = global.nei_bg_x + global.nei_margin + _empty_gx * global.nei_cell_size;
    target_y = global.nei_bg_y + global.nei_margin + _empty_gy * global.nei_cell_size;
    
    // 更新网格状态
    var _old_index = grid_index;
    var _new_index = global.nei_empty_pos;
    
    // 交换网格数据
    global.nei_grid[_new_index] = tile_num;
    global.nei_grid[_old_index] = 0;
    
    // 更新空位位置
    global.nei_empty_pos = _old_index;
    
    // 更新瓷砖的网格索引
    grid_index = _new_index;
    
    // 开始移动动画
    is_moving = true;
    
    show_debug_message("Grid state: " + string(global.nei_grid[0]) + "," + string(global.nei_grid[1]) + "," + string(global.nei_grid[2]) + " / " + 
                       string(global.nei_grid[3]) + "," + string(global.nei_grid[4]) + "," + string(global.nei_grid[5]) + " / " +
                       string(global.nei_grid[6]) + "," + string(global.nei_grid[7]) + "," + string(global.nei_grid[8]));
} else {
    // 无法移动，播放错误音效
    audio_play_sound(snd_beep_error, 0, false);
    show_debug_message("Cannot move tile " + string(tile_num) + " - empty space not adjacent");
}