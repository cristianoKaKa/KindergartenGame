/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if (instance_exists(obj_fire_scare_tutorial)) return;

if(obj_fire_scare_player.drag_num==0){
	obj_fire_scare_player.drag_num+=1;
	grab = true;
}

depth = -1;

// get relative click position
xx = x - mouse_x;
yy = y - mouse_y;

