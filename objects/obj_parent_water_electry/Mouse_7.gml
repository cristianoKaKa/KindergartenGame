/// @description 鼠标释放 - 基础处理（子对象需要覆盖此事件）
if(!grab) return;	// 避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
audio_play_sound(snd_pop, 0, false);

obj_water_electry_player.drag_num -= 1;

