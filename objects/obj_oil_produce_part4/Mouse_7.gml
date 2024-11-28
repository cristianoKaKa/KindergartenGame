/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = -1;

var _controller = instance_find(obj_oil_produce_player,0);

if(place_meeting(x,y,obj_oil_produce_circle_4)){
	x = _controller.circle_4_pos[0];
	y = _controller.circle_4_pos[1];
	audio_play_sound(snd_pop,0,false);
	if(in_circle==false){
		in_circle = true;
		global.in_box_cnt += 1;
	}
}else{
	x = origin_x;
	y = origin_y;
	if(in_circle){
		global.in_box_cnt -= 1;
	}
	in_circle = false;
	audio_play_sound(snd_beep_error,0,false);
}

show_debug_message("in box cnt={0}",global.in_box_cnt);