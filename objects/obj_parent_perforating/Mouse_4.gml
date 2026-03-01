/// @description 鼠标按下 - 开始拖拽
if (placed) return;
if (instance_exists(obj_perforating_tutorial)) return;
if (obj_perforating_player.drag_num != 0) return;

obj_perforating_player.drag_num += 1;
grab = true;
depth = -1;
xx = x - mouse_x;
yy = y - mouse_y;

