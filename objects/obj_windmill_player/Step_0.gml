if (global.wm_in_box_cnt != obj_num) {
	_succeed = false;
}

if (!_succeed && global.wm_in_box_cnt == obj_num) {
	congrats();
	audio_play_sound(snd_co_succeed, 0, false);
	global.wm_succeed = true;
	_succeed = true;
}
