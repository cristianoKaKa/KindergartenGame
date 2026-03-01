/// @description 检查游戏是否完成
in_box_cnt = global.cnt1 + global.cnt2 + global.cnt3 + global.cnt_truck;

if(in_box_cnt!=16){
	_succeed = false;
}

if(!_succeed && in_box_cnt==16){
	congrats();
	audio_play_sound(snd_co_succeed,0,false);
	_succeed = true;
}
