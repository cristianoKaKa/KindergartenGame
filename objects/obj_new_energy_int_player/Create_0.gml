/// @description 新能源智力游戏 - 华容道滑块拼图
// 初始化游戏状态

show_debug_message("obj_new_energy_int_player created!");
_succeed = false;

// 获取背景对象的位置
var _bg = instance_find(obj_new_energy_int_bg, 0);
if (_bg != noone) {
    global.nei_bg_x = _bg.x;
    global.nei_bg_y = _bg.y;
} else {
    global.nei_bg_x = 416;
    global.nei_bg_y = 32;
}

// 网格配置
global.nei_grid_size = 3;           // 3x3 网格
global.nei_cell_size = 250;         // 每个格子大小 = 瓷砖大小 (紧挨在一起)
global.nei_tile_size = 250;         // 瓷砖大小
global.nei_margin = 40;             // bg内边距 (830-750)/2 = 40

// 网格数组: 存储每个位置上的瓷砖编号 (0表示空位, 1-8表示瓷砖)
// 布局:
// [0,0] [1,0] [2,0]   =>   grid[0] grid[1] grid[2]
// [0,1] [1,1] [2,1]   =>   grid[3] grid[4] grid[5]
// [0,2] [1,2] [2,2]   =>   grid[6] grid[7] grid[8]
//
// 目标状态: 0 1 2 / 3 4 5 / 6 7 8 (空位在左上角)
global.nei_grid = array_create(9, 0);

// 初始状态: 把瓷砖打乱 (确保可解)
// 初始布局: 瓷砖1在右下角(位置8)
// 我们设置一个可解的初始状态:
// 1 2 5 / 3 4 8 / 6 0 7
global.nei_grid[0] = 1;
global.nei_grid[1] = 2;
global.nei_grid[2] = 5;
global.nei_grid[3] = 3;
global.nei_grid[4] = 4;
global.nei_grid[5] = 8;
global.nei_grid[6] = 6;
global.nei_grid[7] = 0;  // 空位
global.nei_grid[8] = 7;

// 记录空位位置
global.nei_empty_pos = 7;  // 空位在索引7 (即位置 [1,2])

// 目标状态
global.nei_target = [0, 1, 2, 3, 4, 5, 6, 7, 8];

// 用于存储瓷砖实例ID的数组
global.nei_tiles = array_create(9, noone);

// 创建8个瓷砖
var _tile_objects = [
    noone,                    // 索引0不使用
    obj_new_energy_int_1,
    obj_new_energy_int_2,
    obj_new_energy_int_3,
    obj_new_energy_int_4,
    obj_new_energy_int_5,
    obj_new_energy_int_6,
    obj_new_energy_int_7,
    obj_new_energy_int_8
];

// 根据网格状态创建瓷砖
for (var i = 0; i < 9; i++) {
    var _tile_num = global.nei_grid[i];
    if (_tile_num > 0) {  // 不是空位
        var _gx = i mod 3;
        var _gy = i div 3;
        var _px = global.nei_bg_x + global.nei_margin + _gx * global.nei_cell_size;
        var _py = global.nei_bg_y + global.nei_margin + _gy * global.nei_cell_size;
        
        var _tile = instance_create_layer(_px, _py, "Instances", _tile_objects[_tile_num]);
        _tile.tile_num = _tile_num;
        _tile.grid_index = i;
        _tile.depth = 0;  // 确保瓷砖显示在背景前面
        global.nei_tiles[_tile_num] = _tile;
        
        show_debug_message("Created tile " + string(_tile_num) + " at grid index " + string(i) + " pos (" + string(_px) + "," + string(_py) + ")");
    }
}

// 创建教程弹窗
instance_create_layer(0, 0, "Instances", obj_new_energy_int_tutorial);

