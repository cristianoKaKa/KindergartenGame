/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
event_inherited();
depth = -1;

var _controller = instance_find(obj_worker_player,0);
if(worker==1) _controller.worker_1[1]="0";
if(worker==2) _controller.worker_2[1]="0";
if(worker==3) _controller.worker_3[1]="0";
	
if(place_meeting(x,y,obj_worker1)){
	if(_controller.worker_1[1]=="0" || _controller.worker_1[1]=="blue"){
		x = _controller.jacket_x_pos[0];
		y = _controller.jacket_y_pos[0];
		worker = 1;
		_controller.worker_1[1]="blue";
	}else{
		worker = 0;
		x = origin_x;
		y = origin_y;
	}
	show_debug_message("worker 1!");
	show_debug_message(_controller.worker_1);
}
else if(place_meeting(x,y,obj_worker2)){
	if(_controller.worker_2[1]=="0" || _controller.worker_2[1]=="blue"){
		x = _controller.jacket_x_pos[1];
		y = _controller.jacket_y_pos[1];
		worker = 2;
		_controller.worker_2[1]="blue";
	}else{
		x = origin_x;
		y = origin_y;
		worker = 0;
	}
	show_debug_message("worker 2!");
	show_debug_message(_controller.worker_2);
}
else if(place_meeting(x,y,obj_worker3)){
	if(_controller.worker_3[1]=="0" || _controller.worker_3[1]=="blue"){
		x = _controller.jacket_x_pos[2];
		y = _controller.jacket_y_pos[2];
		worker = 3;
		_controller.worker_3[1]="blue";
	}else{
		x = origin_x;
		y = origin_y;
		worker = 0;
	}
	show_debug_message("worker 3!");
	show_debug_message(_controller.worker_3);
}
else{
	x = origin_x;
	y = origin_y;
	worker = 0;
}
