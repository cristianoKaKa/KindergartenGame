/// @description 检测游戏是否完成

if(global.in_box_cnt != obj_num) {
	_succeed = false;
}

if(!_succeed && global.in_box_cnt == obj_num) {
	// 所有部件都已正确放置，游戏完成！
	congrats();
	audio_play_sound(snd_co_succeed, 0, false);
	_succeed = true;
}
