/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop,0,false);

var _initial_x = 896;
var _initial_y = 96;
var _array;
var _new_box_id;
var _in_box = true;
var _pos_x = _initial_x;
var _pos_y = _initial_y;
var _origin_array;
if(origin_box_id==1) _origin_array = global.black_array;
else if(origin_box_id==2) _origin_array = global.green_array;
else if(origin_box_id==3) _origin_array = global.yellow_array;
else if(origin_box_id==4) _origin_array = global.white_array;

var _bl = global.black_left;
var _br = global.black_right;
var _bt = global.black_top;
var _bb = global.black_bottom;
var _gl = global.green_left;
var _gr = global.green_right;
var _gt = global.green_top;
var _gb = global.green_bottom;
var _yl = global.yellow_left;
var _yr = global.yellow_right;
var _yt = global.yellow_top;
var _yb = global.yellow_bottom;
var _wl = global.white_left;
var _wr = global.white_right;
var _wt = global.white_top;
var _wb = global.white_bottom;
if (x>=_bl and x<=_br and y>=_bt and y<=_bb){
	_pos_x = global.pos_black[0];
	_pos_y = global.pos_black[1];
	_array = global.black_array;
	box_idx = 1;
	_new_box_id = 1;
}
else if(x>=_gl and x<=_gr and y>=_gt and y<=_gb){
	_pos_x = global.pos_green[0];
	_pos_y = global.pos_green[1];
	_array = global.green_array;
	box_idx = 2;
	_new_box_id = 2;
}
else if(x>=_yl and x<=_yr and y>=_yt and y<=_yb){
	_pos_x = global.pos_yellow[0];
	_pos_y = global.pos_yellow[1];
	_array = global.yellow_array;
	box_idx = 3;
	_new_box_id = 3;
}
else if(x>=_wl and x<=_wr and y>=_wt and y<=_wb){
	_pos_x = global.pos_white[0];
	_pos_y = global.pos_white[1];
	_array = global.white_array;
	box_idx = 4;
	_new_box_id = 4;
}else{
	_pos_x = _initial_x;
	_pos_y = _initial_y;
	_in_box = false;
	_new_box_id = 0;
}

if(origin_box_id == _new_box_id){
	x = origin_x;
	y = origin_y;
	return;
}
if(_in_box){	//入盒
	var _i = 1;
	while(_i<global.arr_len and _array[_i]!="0"){
		_i+=1;
	}
	if(_i<global.arr_len){	//盒中存在空位
		show_debug_message("White drop 4 In box!");
		x = _pos_x+_i*80;
		y = _pos_y;
		if(origin_box_id!=0 and origin_box_id!=_new_box_id){
			_origin_array[pos_idx] = "0";
		}
		pos_idx = _i;
		_array[pos_idx] = "white_drop4";
		origin_box_id = _new_box_id;
	}else{		//盒中没有空位，需要返回初始位置
		show_debug_message("White drop 4 No free space!");
		x = _initial_x;
		y = _initial_y;
		if(origin_box_id!=0){		//之前在某个盒子中
			_origin_array[pos_idx] = "0";
			origin_box_id=0;
			pos_idx = 0;
			//show_debug_message("origin:");
			//show_debug_message(_origin_array);
		}
	}
	//show_debug_message("new:");
	show_debug_message(_array);
}else{			//出盒
	show_debug_message("White drop 4 Out of box!");
	x = _pos_x;
	y = _pos_y;
	//_array[0] = "0";
	if(origin_box_id!=0){		//之前在某个盒子中
		_origin_array[pos_idx] = "0";
		origin_box_id=0;
		pos_idx=0;
		//show_debug_message("origin:");
		//show_debug_message(_origin_array);
	}
}
origin_x = x;
origin_y = y;