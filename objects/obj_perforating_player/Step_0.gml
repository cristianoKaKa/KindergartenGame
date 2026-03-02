/// @description 初始化对象位置和检测游戏完成
if (!_initialized) {
    _initialized = true;

    // step对象标记为不可拖拽
    with (obj_perforating_step_1) { placed = true; }
    with (obj_perforating_step_2) { placed = true; }
    with (obj_perforating_step_3) { placed = true; }
    with (obj_perforating_step_4) { placed = true; }
    with (obj_perforating_step_5) { placed = true; }
    with (obj_perforating_step_6) { placed = true; }

    // 设置可拖拽对象的目标吸附位置（原始room摆放位置）
    with (obj_perforating_1_up) { target_x = 167; target_y = 267; }
    with (obj_perforating_1_down) { target_x = 160; target_y = 352; }
    with (obj_perforating_2) { target_x = 768; target_y = 352; }
    with (obj_perforating_3) { target_x = 1280; target_y = 352; }
    with (obj_perforating_4) { target_x = 224; target_y = 704; }
    with (obj_perforating_5) { target_x = 768; target_y = 672; }
    with (obj_perforating_6) { target_x = 1280; target_y = 672; }
}

if (_succeed) exit;
if (total_items <= 0) exit;

if (global.placed_count >= total_items) {
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
}
