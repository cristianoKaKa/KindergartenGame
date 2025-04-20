/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
var _box_id = last_box_id;

if(place_meeting(x, y, obj_oil_baby_1)){
	if(global.eye_array[0]!="0"){	//箱内已满，无法进箱
		x = last_x;
		y = last_y;
		audio_play_sound(snd_beep_error,0,false);
		return;
	}
	if(in_box){			//之前在箱中，先出箱再进箱
		global.eye_array[last_box_id] = "0";
	}else{				//之前不在箱中，box_cnt加一			
		global.in_box_cnt += 1;
	}
	in_box = true;
	_box_id = 0;
	x = global.pos_eye[_box_id][0];
	y = global.pos_eye[_box_id][1];
	global.eye_array[_box_id] = "1";
}else if(place_meeting(x, y, obj_oil_baby_2)){
	if(global.eye_array[1]!="0"){	//箱内已满，无法进箱
		x = last_x;
		y = last_y;
		audio_play_sound(snd_beep_error,0,false);
		return;
	}
	if(in_box){			//之前在箱中，先出箱再进箱
		global.eye_array[last_box_id] = "0";
	}else{				//之前不在箱中，box_cnt加一			
		global.in_box_cnt += 1;
	}
	in_box = true;
	_box_id = 1;
	x = global.pos_eye[_box_id][0];
	y = global.pos_eye[_box_id][1];
	global.eye_array[_box_id] = "1";
}else if(place_meeting(x, y, obj_oil_baby_3)){
	if(global.eye_array[2]!="0"){	//箱内已满，无法进箱
		x = last_x;
		y = last_y;
		audio_play_sound(snd_beep_error,0,false);
		return;
	}
	if(in_box){			//之前在箱中，先出箱再进箱
		global.eye_array[last_box_id] = "0";
	}else{				//之前不在箱中，box_cnt加一			
		global.in_box_cnt += 1;
	}
	in_box = true;
	_box_id = 2;
	x = global.pos_eye[_box_id][0];
	y = global.pos_eye[_box_id][1];
	global.eye_array[_box_id] = "1";
}else if(place_meeting(x, y, obj_oil_baby_4)){
	if(global.eye_array[3]!="0"){	//箱内已满，无法进箱
		x = last_x;
		y = last_y;
		audio_play_sound(snd_beep_error,0,false);
		return;
	}
	if(in_box){			//之前在箱中，先出箱再进箱
		global.eye_array[last_box_id] = "0";
	}else{				//之前不在箱中，box_cnt加一			
		global.in_box_cnt += 1;
	}
	in_box = true;
	_box_id = 3;
	x = global.pos_eye[_box_id][0];
	y = global.pos_eye[_box_id][1];
	global.eye_array[_box_id] = "1";
}else{			//出箱
	if(in_box){			//之前在箱中，先出箱再进箱
		global.eye_array[last_box_id] = "0";
		in_box = false;
		global.in_box_cnt -= 1;
	}
	x = initial_x;
	y = initial_y;
	_box_id = -1;
}
last_x = x;
last_y = y;
last_box_id = _box_id;

audio_play_sound(snd_pop,0,false);
//show_debug_message("in_box_cnt:"+string(global.in_box_cnt));