/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

in_box_cnt = global.cnt1 + global.cnt2 + global.cnt3 + global.cnt_truck;

//show_debug_message("in_box_cnt="+string(in_box_cnt));
if(in_box_cnt!=16){
	_succeed = false;
}

if(!_succeed  && in_box_cnt==16){		//所有对象都已进箱
	var _box1_bool = false;
	if(place_meeting(obj_fire_scare_part_1.x,obj_fire_scare_part_1.y,obj_box_1) && 
		place_meeting(obj_fire_scare_part_1.x,obj_fire_scare_part_1.y,obj_box_1) && 
		place_meeting(obj_fire_scare_part_1.x,obj_fire_scare_part_1.y,obj_box_1) && 
		place_meeting(obj_fire_scare_part_1.x,obj_fire_scare_part_1.y,obj_box_1) )
	{
		
	}
	congrats();

	audio_play_sound(snd_co_succeed,0,false);
	_succeed = true;
}