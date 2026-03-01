if (global.in_box_cnt != obj_num) {
	_succeed = false;
}

if (!_succeed && global.in_box_cnt == obj_num) {
	congrats();
	audio_play_sound(snd_co_succeed, 0, false);
	_succeed = true;
}
