/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
audio_play_sound(snd_pop,0,false);

var bds = global.boundary;
var _pos_x = initial_x;
var _pos_y = initial_y;

if(x>=bds[0][0] and x<=bds[0][1] and y>=bds[0][2] and y<=bds[0][3]){	//box 1
	_pos_x = pos_arr[0][0];
	_pos_y = pos_arr[0][1];
	box_idx = 1;
}else if(x>=bds[1][0] and x<=bds[1][1] and y>=bds[1][2] and y<=bds[1][3]){	//box 2
	_pos_x = pos_arr[1][0];
	_pos_y = pos_arr[1][1];
	box_idx = 2;
}else if(x>=bds[2][0] and x<=bds[2][1] and y>=bds[2][2] and y<=bds[2][3]){	//box 3
	_pos_x = pos_arr[2][0];
	_pos_y = pos_arr[2][1];
	box_idx = 3;
}else if(x>=bds[3][0] and x<=bds[3][1] and y>=bds[3][2] and y<=bds[3][3]){	//box 4
	_pos_x = pos_arr[3][0];
	_pos_y = pos_arr[3][1];
	box_idx = 4;
}else if(x>=bds[4][0] and x<=bds[4][1] and y>=bds[4][2] and y<=bds[4][3]){	//box 5
	_pos_x = pos_arr[4][0];
	_pos_y = pos_arr[4][1];
	box_idx = 5;
}else if(x>=bds[5][0] and x<=bds[5][1] and y>=bds[5][2] and y<=bds[5][3]){	//box 6
	_pos_x = pos_arr[5][0];
	_pos_y = pos_arr[5][1];
	box_idx = 6;
}else{
	box_idx = 0;
}
if(box_idx==origin_box_id){
	x = _pos_x;
	y = _pos_y;
	return;
}else if(box_idx!=0 and global.box[box_idx-1]=="0"){ //box内为空，可进箱
	if(origin_box_id==dest_id){			//从目标箱进入其他箱，入箱数减一
		global.in_box_cnt -=1;
	}
	if(box_idx == dest_id){	//所进箱为目标箱,且之前没有进箱
		global.in_box_cnt +=1;
	}
	if(in_box){				//之前在箱，先出箱再进箱
		global.box[origin_box_id-1]="0";
	}
	in_box = true;
	x = _pos_x;
	y = _pos_y;
	origin_box_id = box_idx;
	global.box[box_idx-1]="1";
}else{		// 出箱
	x = initial_x;
	y = initial_y;
	if(origin_box_id==dest_id){	//从目标箱出箱，入箱数减一
		global.in_box_cnt -=1;
	}
	if(in_box){				//之前在箱，先出箱再进箱
		global.box[origin_box_id-1]="0";
	}
	in_box = false;
	origin_box_id = 0;
}

show_debug_message("in_box_cnt:"+string(global.in_box_cnt));

