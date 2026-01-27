/// @description 检测游戏是否完成

// 如果slot数量变化，重置成功状态
if (global.in_box_cnt != obj_num) {
    _succeed = false;
}

// 检测所有slot是否都已填充
if (!_succeed && global.in_box_cnt == obj_num && obj_num > 0) {
    // 所有部件都已正确放置，游戏完成！
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
    show_debug_message("earth_inner_structure game completed! All " + string(obj_num) + " slots filled.");
}
