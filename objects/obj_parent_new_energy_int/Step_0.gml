/// @description 移动动画
// 华容道瓷砖平滑移动

if (!is_moving) exit;

// 计算到目标的距离
var _dist = point_distance(x, y, target_x, target_y);

if (_dist <= move_speed) {
    // 到达目标位置
    x = target_x;
    y = target_y;
    is_moving = false;
} else {
    // 向目标移动
    var _dir = point_direction(x, y, target_x, target_y);
    x += lengthdir_x(move_speed, _dir);
    y += lengthdir_y(move_speed, _dir);
}