/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
obj_secret_bucket_player.drag_num-=1;

//origin_x = x;		//上一次x位置
//origin_y = y;		//上一次y位置 = x;
var _array = [];
var _new_box_id;
var _in_box = true;
var _back_origin = false;
var _pos_x = x;
var _pos_y = y;
var _origin_array;
if(origin_box_id==1) _origin_array = global.array_1;
else if(origin_box_id==2) _origin_array = global.array_2;
else if(origin_box_id==3) _origin_array = global.array_3;
else if(origin_box_id==4) _origin_array = global.array_4;
else if(origin_box_id==5) _origin_array = global.array_5;
else if(origin_box_id==0) _origin_array = global.array_red;

if (x>=global.box_1_left and x<=global.box_1_right and y>=global.box_1_top and y<=global.box_1_bottom){		//在框1
	_pos_x = global.pos_box_1[0];
	_pos_y = global.pos_box_1[1];
	_array = global.array_1;
	box_idx = 1;
	_new_box_id = 1;
}
else if(x>=global.box_2_left and x<=global.box_2_right and y>=global.box_2_top and y<=global.box_2_bottom){	//在框2
	_pos_x = global.pos_box_2[0];
	_pos_y = global.pos_box_2[1];
	_array = global.array_2;
	box_idx = 2;
	_new_box_id = 2;
}
else if(x>=global.box_3_left and x<=global.box_3_right and y>=global.box_3_top and y<=global.box_3_bottom){	//在框3
	_pos_x = global.pos_box_3[0];
	_pos_y = global.pos_box_3[1];
	_array = global.array_3;
	box_idx = 3;
	_new_box_id = 3;
}
else if(x>=global.box_4_left and x<=global.box_4_right and y>=global.box_4_top and y<=global.box_4_bottom){	//在框4
	_pos_x = global.pos_box_4[0];
	_pos_y = global.pos_box_4[1];
	_array = global.array_4;
	box_idx = 4;
	_new_box_id = 4;
}
else if(x>=global.box_5_left and x<=global.box_5_right and y>=global.box_5_top and y<=global.box_5_bottom){	//在框5
	_pos_x = global.pos_box_5[0];
	_pos_y = global.pos_box_5[1];
	_array = global.array_5;
	box_idx = 5;
	_new_box_id = 5;
}else{												//回初始框
	_pos_x = global.pos_red[0];
	_pos_y = global.pos_red[1];
	_array = global.array_red;
	_in_box = false;
	_new_box_id = 0;
	_back_origin = true;
}

show_debug_message("origin box id:{0}, new box id:{1}",origin_box_id, _new_box_id);
if(origin_box_id == _new_box_id){	//移动到原有box，没有变化
	x = origin_x;
	y = origin_y;
	_in_box = false;
	return;
}
if(_in_box){	//入盒
	var _i = 0;
	while(_i<array_length(_array) and _array[_i]!="0"){
		_i+=1;
	}
	if(box_idx==1 || box_idx==2 || box_idx==5){					//进错盒，则报错并返回原位置
		audio_play_sound(snd_beep_error,0,false);
		x = origin_x;
		y = origin_y;
	}
	else if(_i<array_length(_array)){	//盒中存在空位,成功入盒
		show_debug_message("Red bucket In box!");
		audio_play_sound(snd_pop,0,false);
		if(origin_box_id==0){	//之前不在盒子中
			global.in_box_cnt +=1;
			show_debug_message("In box count plus 1, now is: {0}", global.in_box_cnt);
		}
		x = _pos_x+_i*96;
		y = _pos_y;
		/*if(origin_box_id!=0 and origin_box_id!=_new_box_id){	//之前在非本盒子的某个盒子中
			_origin_array[pos_idx] = "0";
		}*/
		if(origin_box_id!=_new_box_id){			//之前在非本盒子的某个盒子中
			_origin_array[pos_idx] = "0";
		}
		pos_idx = _i;
		_array[pos_idx] = "Red";
		origin_box_id = _new_box_id;
		show_debug_message("Red bucket x={0}, y={1}", x,y);
	}
	else{		//盒中没有空位，需要返回初始位置
		show_debug_message("Box No free space!");
		_pos_x = global.pos_red[0];
		_pos_y = global.pos_red[1];
		_array = global.array_red;
		_back_origin = true;
	}
}
if(_back_origin){
	if(origin_box_id==0){
		x = origin_x;
		y = origin_y;
		return;
	}
	var _i = 0;
	while(_i<array_length(_array) and _array[_i]!="0"){
		_i+=1;
	}
	show_debug_message("Red bucket Out of box!");
	x = _pos_x+_i*96;
	y = _pos_y;
	if(origin_box_id!=0){		//之前在某个盒子中
		_origin_array[pos_idx] = "0";
		origin_box_id=0;
		global.in_box_cnt -=1;
		show_debug_message("In box count minus 1, now is: {0}", global.in_box_cnt);
	}
	pos_idx = _i;
	_array[pos_idx] = "Red";
	origin_box_id = _new_box_id;
}
show_debug_message(global.array_red);
origin_x = x;
origin_y = y;

