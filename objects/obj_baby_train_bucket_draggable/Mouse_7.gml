/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;

if (place_meeting(x, y, obj_baby_train_red_box_1)) {	
	if(global.cnt1<1){
		var _cnt = global.cnt1;
		// 在目标区域创建静态油桶
		var _arr = global.pos_1;
	    instance_create_layer(_arr[_cnt][0], _arr[_cnt][1], "Instances", obj_baby_train_bucket_stable);
		global.cnt1 += 1;
		audio_play_sound(snd_pop,0,false);
		global.in_box_cnt += 1;
	}else{
		audio_play_sound(snd_beep_error,0,false);
	}
}else if(place_meeting(x, y, obj_baby_train_red_box_2)) {	
	if(global.cnt2<2){
		var _cnt = global.cnt2;
		// 在目标区域创建静态油桶
		var _arr = global.pos_2;
        instance_create_layer(_arr[_cnt][0], _arr[_cnt][1], "Instances", obj_baby_train_bucket_stable);
		global.cnt2 += 1;
		audio_play_sound(snd_pop,0,false);
		global.in_box_cnt += 1;
	}else{
		audio_play_sound(snd_beep_error,0,false);
	}
}else if(place_meeting(x, y, obj_baby_train_red_box_3)) {	
	if(global.cnt3<3){
		var _cnt = global.cnt3;
		// 在目标区域创建静态油桶
		var _arr = global.pos_3;
        instance_create_layer(_arr[_cnt][0], _arr[_cnt][1], "Instances", obj_baby_train_bucket_stable);	
		global.cnt3 += 1;
		audio_play_sound(snd_pop,0,false);
		global.in_box_cnt += 1;
	}else{
		audio_play_sound(snd_beep_error,0,false);
	}
	
}else if(place_meeting(x, y, obj_baby_train_red_box_4)) {
	if(global.cnt4<4){
		var _cnt = global.cnt4;
		// 在目标区域创建静态油桶
		var _arr = global.pos_4;
        instance_create_layer(_arr[_cnt][0], _arr[_cnt][1], "Instances", obj_baby_train_bucket_stable);
		global.cnt4 += 1;
		audio_play_sound(snd_pop,0,false);
		global.in_box_cnt += 1;
	}else{
		audio_play_sound(snd_beep_error,0,false);
	}
}else if(place_meeting(x, y, obj_baby_train_red_box_5)) {
	if(global.cnt5<5){
		var _cnt = global.cnt5;
		// 在目标区域创建静态油桶
		var _arr = global.pos_5;
        instance_create_layer(_arr[_cnt][0], _arr[_cnt][1], "Instances", obj_baby_train_bucket_stable);
		global.cnt5 += 1;
		audio_play_sound(snd_pop,0,false);
		global.in_box_cnt += 1;
	}else{
		audio_play_sound(snd_beep_error,0,false);
	}
}
// 无论是否成功，返回初始位置
x = initial_x;
y = initial_y;