/// @description 华容道瓷砖初始化
// 瓷砖属性

tile_num = 0;       // 瓷砖编号 (1-8)，由player对象创建时设置
grid_index = 0;     // 当前在网格中的位置索引 (0-8)

// 移动动画相关
is_moving = false;
target_x = x;
target_y = y;
move_speed = 20;    // 移动速度