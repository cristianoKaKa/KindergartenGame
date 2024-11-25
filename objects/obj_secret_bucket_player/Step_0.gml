/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(global.in_box_cnt!=obj_num){
	_succeed = false;
}

if(!_succeed  && global.in_box_cnt==obj_num){		//所有对象都已进箱
	show_message_async("恭喜你！成功了！");
	audio_play_sound(snd_co_succeed,0,false);
	_succeed = true;
}