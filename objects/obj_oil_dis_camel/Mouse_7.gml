/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
event_inherited();
// number 5
depth = -1;

var _controller = instance_find(obj_oil_distrubution_player,0);

if(x>global.box_5_left && x<global.box_5_right && y>global.box_5_top && y<global.box_5_bottom){
	x = _controller.camel_pos[0];
	y = _controller.camel_pos[1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}
else{
	x = origin_x;
	y = origin_y;
	if(in_box) global.in_box_cnt-=1;
	in_box = false;
	audio_play_sound(snd_beep_warning,0,false)
}
show_debug_message("in box cnt = {0}", global.in_box_cnt);
