/// @description 地球内部结构 - 可拖拽部件父类初始化
grab = false;          // 是否正在拖拽

xx = 0;                // 鼠标相对位置X
yy = 0;                // 鼠标相对位置Y

origin_x = x;          // 初始位置X (用于返回原位)
origin_y = y;          // 初始位置Y

// 部件类型标识 (由子类设置)
part_type = "2div";    // "2div", "3div", "4div"