/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(global.in_box_cnt!=20){
	_succeed = false;
}

if(!_succeed  && global.in_box_cnt==20){		//所有对象都已进箱
	var _black_true = false;
	for (var i=0;i<4;i++){
		if( (black_drops[i].x==global.pos_black[0]+(i+1)*interval) && (black_drops[i].y==global.pos_black[1])){
			_black_true = true;
			//show_debug_message("true!");
		}else{
			_black_true = false;
		}
	}
	var _green_true = false;
	for (var i=0;i<4;i++){
		if( (green_drops[i].x==global.pos_green[0]+(i+1)*interval) && (green_drops[i].y==global.pos_green[1])){
			_green_true = true;
			//show_debug_message("true!");
		}else{
			_green_true = false;
		}
	}
	var _white_true = false;
	for (var i=0;i<4;i++){
		if( (white_drops[i].x==global.pos_white[0]+(i+1)*interval) && (white_drops[i].y==global.pos_white[1])){
			_white_true = true;
			//show_debug_message("true!");
		}else{
			_white_true = false;
		}
	}
	var _yellow_true = false;
	for (var i=0;i<4;i++){
		if( (yellow_drops[i].x==global.pos_yellow[0]+(i+1)*interval) && (yellow_drops[i].y==global.pos_yellow[1])){
			_yellow_true = true;
			//show_debug_message("true!");
		}else{
			_yellow_true = false;
		}
	}
	if(_black_true && _green_true && _white_true && _yellow_true){
		// 创建弹窗和按钮
		congrats();

		audio_play_sound(snd_co_succeed,0,false);
		_succeed = true;
	}
}