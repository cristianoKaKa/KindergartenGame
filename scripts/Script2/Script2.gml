// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function wheel_in_box(){
	 if(place_meeting(x,y,obj_truck_bg)){
		var _i = 0;
		while(_i<4 and global.box_wheel[_i]!="0"){
			_i+=1;
		}
		show_debug_message("i="+string(_i));
		if(_i<4){
			x = global.wheel_pos[_i][0];
			y = global.wheel_pos[_i][1];
			global.box_wheel[_i] = "1";
			pos_idx = _i;
			if(origin_box_id!=1) global.cnt_truck +=1;
			origin_box_id = 1;
		}
	}else{
		x = origin_x;
		y = origin_y;
		if (origin_box_id==1){ 
			global.cnt_truck -= 1;
			global.box_wheel[pos_idx] = "0";
		}
		origin_box_id = 0;
	}
	
	//in_box_cnt = global.cnt1 + global.cnt2 + global.cnt3 + global.cnt_truck;
	//show_debug_message("in_box_cnt="+string(in_box_cnt));
}