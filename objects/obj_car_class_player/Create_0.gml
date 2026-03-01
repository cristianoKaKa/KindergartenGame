drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 12;

global.car_class_can_drag = false;
slots_created = false;

if (!instance_exists(obj_car_class_tutorial)) {
	instance_create_layer(0, 0, "Instances", obj_car_class_tutorial);
}

