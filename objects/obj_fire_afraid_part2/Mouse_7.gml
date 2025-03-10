/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
audio_play_sound(snd_pop,0,false);

obj_fire_afraid_player.drag_num-=1;

var _initial_x = global.initial_pos_2[0];
var _initial_y = global.initial_pos_2[1];

var _array = global.array_2;
var _in_box = true;
var _pos_x = _initial_x;
var _pos_y = _initial_y;

var _1l = global.box_1_left;
var _1r = global.box_1_right;
var _1t = global.box_1_top;
var _1b = global.box_1_bottom;
var _2l = global.box_2_left;
var _2r = global.box_2_right;
var _2t = global.box_2_top;
var _2b = global.box_2_bottom;
var _3l = global.box_3_left;
var _3r = global.box_3_right;
var _3t = global.box_3_top;
var _3b = global.box_3_bottom;
var _4l = global.box_4_left;
var _4r = global.box_4_right;
var _4t = global.box_4_top;
var _4b = global.box_4_bottom;
//show_debug_message("x={0} y={1}",x,y);
if (x>=_1l and x<=_1r and y>=_1t and y<=_1b){
	_pos_x = global.pos_box_1[0];
	_pos_y = global.pos_box_1[1];
	box_idx = 1;
}
else if(x>=_2l and x<=_2r and y>=_2t and y<=_2b){
	_pos_x = global.pos_box_2[0];
	_pos_y = global.pos_box_2[1];
	box_idx = 2;
}
else if(x>=_3l and x<=_3r and y>=_3t and y<=_3b){
	_pos_x = global.pos_box_3[0];
	_pos_y = global.pos_box_3[1];
	box_idx = 3;
}
else if(x>=_4l and x<=_4r and y>=_4t and y<=_4b){
	_pos_x = global.pos_box_4[0];
	_pos_y = global.pos_box_4[1];
	box_idx = 4;
}else{
	_pos_x = _initial_x;
	_pos_y = _initial_y;
	_in_box = false;
}
//show_debug_message("in box is: {0}",_in_box);

if(_in_box){	//入盒
	if(box_idx!=2){					//进错盒，则报错并返回原位置
		audio_play_sound(snd_beep_error,0,false);
		x = _initial_x;
		y = _initial_y;
	}
	else{							//进对盒
		show_debug_message("In box one!");
		audio_play_sound(snd_pop,0,false);
		x = _pos_x;
		y = _pos_y;
		if(origin_box_id==0){	//之前不在盒子中
			global.in_box_cnt +=1;
			show_debug_message("In box count plus 1, now is: {0}", global.in_box_cnt);
		}
		_array[0] = "2";
		origin_box_id = box_idx;
	}
	//show_debug_message("new:");
	show_debug_message(_array);
}else{			//出盒
	show_debug_message("Out of box 2!");
	x = _pos_x;
	y = _pos_y;
	//_array[0] = "0";

	if(origin_box_id!=0){		//之前在某个盒子中
		origin_box_id=0;
		global.in_box_cnt -=1;
		show_debug_message("In box count minus 1, now is: {0}", global.in_box_cnt);
	}
}
