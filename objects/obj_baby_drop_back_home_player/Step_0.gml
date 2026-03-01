/// @description 送油宝宝回家 - 检查游戏完成
// 检查是否所有油滴都已成功放置

if(global.in_box_cnt != global.total_drops){
	_succeed = false;
}

if(!_succeed && global.in_box_cnt == global.total_drops){
	// 所有油滴都已成功放置，游戏完成！
	// 创建弹窗和按钮
	congrats();
	
	audio_play_sound(snd_co_succeed, 0, false);
	_succeed = true;
	
	show_debug_message("游戏完成！所有油宝宝都回家了！");
}