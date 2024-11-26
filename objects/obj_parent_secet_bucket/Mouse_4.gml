/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
show_debug_message("drag num={0}, grab status is:{1}",obj_secret_bucket_player.drag_num, grab);
//show_debug_message(grab);
if(obj_secret_bucket_player.drag_num==0){
	obj_secret_bucket_player.drag_num+=1;
	grab = true;
	show_debug_message("grab!");
}

depth = -1;

// get relative click position
xx = x - mouse_x;
yy = y - mouse_y;

//show_debug_message(obj_drill_player.drag_num);

show_debug_message("click!");