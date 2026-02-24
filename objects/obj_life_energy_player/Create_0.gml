drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 4;

global.life_energy_can_drag = false;

if (!instance_exists(obj_life_energy_tutorial)) {
	instance_create_layer(0, 0, "Instances", obj_life_energy_tutorial);
}
