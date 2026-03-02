/// @description 鼠标按下 - 开始拖拽
if (!draggable || placed) return;

if (obj_lipstick_player.drag_num == 0) {
    obj_lipstick_player.drag_num += 1;
    grab = true;
}

depth = -1;
xx = x - mouse_x;
yy = y - mouse_y;
