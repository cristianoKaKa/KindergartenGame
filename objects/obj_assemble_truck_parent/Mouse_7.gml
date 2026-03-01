/// @description 鼠标释放 - 检测是否放到正确位置
if (!grab) return;
grab = false;

obj_assemble_truck_player.drag_num -= 1;

var _on_bg = false;
switch (match_id) {
	case 1: _on_bg = place_meeting(x, y, obj_assemble_truck_truck_1_bg); break;
	case 2: _on_bg = place_meeting(x, y, obj_assemble_truck_truck_2_bg); break;
	case 3: _on_bg = place_meeting(x, y, obj_assemble_truck_truck_3_bg); break;
	case 4: _on_bg = place_meeting(x, y, obj_assemble_truck_truck_4_bg); break;
	default: _on_bg = false;
}

if (_on_bg) {
	x = target_x;
	y = target_y;
	placed = true;
	global.in_box_cnt += 1;
	audio_play_sound(snd_pop, 0, false);
} else {
	x = initial_x;
	y = initial_y;
	depth = 0;
	audio_play_sound(snd_beep_error, 0, false);
}
