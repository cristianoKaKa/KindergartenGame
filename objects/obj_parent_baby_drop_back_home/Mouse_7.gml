/// @description 送油宝宝回家 - 父类鼠标释放事件 (基础逻辑)
// 子类会覆盖此事件来实现具体的拖拽判断逻辑
// 此父类事件提供默认的失败处理：回到初始位置

if(!grab) return;	// 避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;

// 默认行为：播放错误音效并回到初始位置
// 子类会覆盖这个事件来实现正确的拖拽逻辑
audio_play_sound(snd_beep_error, 0, false);
x = initial_x;
y = initial_y;
