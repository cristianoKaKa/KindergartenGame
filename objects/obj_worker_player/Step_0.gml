/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(global.in_box_cnt!=obj_num){
	_succeed = false;
}

if(!_succeed  && global.in_box_cnt==obj_num){		//所有对象都已进箱
	var _worker1_same = worker_1[0]==worker_1[1] && worker_1[0]==worker_1[2];
	var _worker2_same = worker_2[0]==worker_2[1] && worker_2[0]==worker_2[2];
	var _worker3_same = worker_3[0]==worker_3[1] && worker_3[0]==worker_3[2];
	if(_worker1_same && _worker2_same && _worker3_same){
		show_message_async("恭喜你！成功了！");
		audio_play_sound(snd_co_succeed,0,false);
		_succeed = true;
	}
}