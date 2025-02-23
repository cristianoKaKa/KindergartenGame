/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 0;
audio_play_sound(snd_pop,0,false);
new_box_id = 0;

obj_fire_scare_player.drag_num-=1;

if(place_meeting(x,y,obj_box_1) && global.cnt1<4){
	var _i = 0;
	while(_i<4 and global.box_1[_i]!="0"){
		_i+=1;
	}
	show_debug_message("i="+string(_i));
	if(_i<4){
		
		x = global.box_1_pos[_i][0];
		y = global.box_1_pos[_i][1];
		show_debug_message("move into box1!");
		if(origin_box_id==0) global.cnt1 +=1;
		else if(origin_box_id==1) global.box_1[pos_idx] = "0";
		else if(origin_box_id==2) global.box_2[pos_idx] = "0";
		else if(origin_box_id==3) global.box_3[pos_idx] = "0";
		global.box_1[_i] = "1";
		new_box_id = 1;
		pos_idx = _i;
	}else{
		x = origin_x;
		y = origin_y;
	}
}else if(place_meeting(x,y,obj_box_2) && global.cnt2<4){
	var _i = 0;
	while(_i<4 and global.box_2[_i]!="0"){
		_i+=1;
	}
	if(_i<4){
		x = global.box_2_pos[_i][0];
		y = global.box_2_pos[_i][1];
		if(origin_box_id==0) global.cnt2 +=1;
		else if(origin_box_id==1) global.box_1[pos_idx] = "0";
		else if(origin_box_id==2) global.box_2[pos_idx] = "0";
		else if(origin_box_id==3) global.box_3[pos_idx] = "0";
		global.box_2[_i] = "1";
		new_box_id = 2;
		pos_idx = _i;
	}else{
		x = origin_x;
		y = origin_y;
	}
}else if(place_meeting(x,y,obj_box_3) && global.cnt3<2){
	var _i = 0;
	while(_i<2 and global.box_3[_i]!="0"){
		_i+=1;
	}
	if(_i<2){
		x = global.box_3_pos[_i][0];
		y = global.box_3_pos[_i][1];
		if(origin_box_id==0) global.cnt3 +=1;
		else if(origin_box_id==1) global.box_1[pos_idx] = "0";
		else if(origin_box_id==2) global.box_2[pos_idx] = "0";
		else if(origin_box_id==3) global.box_3[pos_idx] = "0";
		global.box_3[_i] = "1";
		new_box_id = 3;
		pos_idx = _i;
	}else{
		x = origin_x;
		y = origin_y;
	}
}else{
	x = initial_x;
	y = initial_y;
	if (origin_box_id==1){ 
		global.cnt1 -= 1;
		global.box_1[pos_idx] = "0";
		show_debug_message("box1:"+string(global.box_1));
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


//in_box_cnt = global.cnt1 + global.cnt2 + global.cnt3 + global.cnt_truck;
//show_debug_message("in_box_cnt="+string(in_box_cnt));