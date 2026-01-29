/// @description 检查游戏是否完成
// 华容道滑块拼图 - 胜利条件检测

if (_succeed) exit;

// 检查当前网格是否与目标状态一致
var _win = true;
for (var i = 0; i < 9; i++) {
    if (global.nei_grid[i] != global.nei_target[i]) {
        _win = false;
        break;
    }
}

if (_win) {
    show_debug_message("Congratulations! Puzzle solved!");
    congrats();
    audio_play_sound(snd_co_succeed, 0, false);
    _succeed = true;
}