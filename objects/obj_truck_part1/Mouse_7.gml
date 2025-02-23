/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(place_meeting(x,y,obj_truck_bg)){
	x = global.oil_bucket_pos[0];
	y = global.oil_bucket_pos[1];
	if(origin_box_id!=1) global.cnt_truck +=1;
	origin_box_id = 1;
}else{
	x = origin_x;
	y = origin_y;
	if(origin_box_id==1) global.cnt_truck -=1;
	origin_box_id = 0;
}

//in_box_cnt = global.cnt1 + global.cnt2 + global.cnt3 + global.cnt_truck;
//show_debug_message("in_box_cnt="+string(in_box_cnt));