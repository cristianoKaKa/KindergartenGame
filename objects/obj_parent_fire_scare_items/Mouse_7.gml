/// @description 鼠标释放 - 限制吸附目标箱子
if(!grab) return;
grab = false;
depth = 0;
audio_play_sound(snd_pop,0,false);
new_box_id = 0;

obj_fire_scare_player.drag_num-=1;

// left_1~4 只能放入 box_1，right_1~4 只能放入 box_2，bottom_1~2 只能放入 box_3
var _target_box = 0;
if (object_index == obj_fire_scare_left_1 || object_index == obj_fire_scare_left_2 ||
    object_index == obj_fire_scare_left_3 || object_index == obj_fire_scare_left_4) {
	_target_box = 1;
} else if (object_index == obj_fire_scare_right_1 || object_index == obj_fire_scare_right_2 ||
           object_index == obj_fire_scare_right_3 || object_index == obj_fire_scare_right_4) {
	_target_box = 2;
} else if (object_index == obj_fire_scare_bottom_1 || object_index == obj_fire_scare_bottom_2) {
	_target_box = 3;
}

var _snapped = false;

if (_target_box == 1 && place_meeting(x,y,obj_box_1) && global.cnt1<4){
	var _i = 0;
	while(_i<4 and global.box_1[_i]!="0"){
		_i+=1;
	}
	if(_i<4){
		x = global.box_1_pos[_i][0];
		y = global.box_1_pos[_i][1];
		if(origin_box_id==0) global.cnt1 +=1;
		else if(origin_box_id==1) global.box_1[pos_idx] = "0";
		global.box_1[_i] = "1";
		new_box_id = 1;
		pos_idx = _i;
		_snapped = true;
	}
} else if (_target_box == 2 && place_meeting(x,y,obj_box_2) && global.cnt2<4){
	var _i = 0;
	while(_i<4 and global.box_2[_i]!="0"){
		_i+=1;
	}
	if(_i<4){
		x = global.box_2_pos[_i][0];
		y = global.box_2_pos[_i][1];
		if(origin_box_id==0) global.cnt2 +=1;
		else if(origin_box_id==2) global.box_2[pos_idx] = "0";
		global.box_2[_i] = "1";
		new_box_id = 2;
		pos_idx = _i;
		_snapped = true;
	}
} else if (_target_box == 3 && place_meeting(x,y,obj_box_3) && global.cnt3<2){
	var _i = 0;
	while(_i<2 and global.box_3[_i]!="0"){
		_i+=1;
	}
	if(_i<2){
		x = global.box_3_pos[_i][0];
		y = global.box_3_pos[_i][1];
		if(origin_box_id==0) global.cnt3 +=1;
		else if(origin_box_id==3) global.box_3[pos_idx] = "0";
		global.box_3[_i] = "1";
		new_box_id = 3;
		pos_idx = _i;
		_snapped = true;
	}
}

if (!_snapped) {
	x = initial_x;
	y = initial_y;
	if (origin_box_id==1){ 
		global.cnt1 -= 1;
		global.box_1[pos_idx] = "0";
	}
	if (origin_box_id==2){ 
		global.cnt2 -= 1;
		global.box_2[pos_idx] = "0";
	}
	if (origin_box_id==3){ 
		global.cnt3 -= 1;
		global.box_3[pos_idx] = "0";
	}
}

origin_x = x;
origin_y = y;
origin_box_id = new_box_id;
