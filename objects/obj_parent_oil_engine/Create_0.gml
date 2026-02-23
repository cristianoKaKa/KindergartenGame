/// @description 抽油机拼图 - 可拖拽物品父类初始化
grab = false;

xx = 0;
yy = 0;

origin_box_id = 0;
initial_x = x;
initial_y = y;

switch(object_index) {
	case obj_oil_engine_part_1: my_slot_obj = obj_oil_engine_slot_1; break;
	case obj_oil_engine_part_2: my_slot_obj = obj_oil_engine_slot_2; break;
	case obj_oil_engine_part_3: my_slot_obj = obj_oil_engine_slot_3; break;
	case obj_oil_engine_part_4: my_slot_obj = obj_oil_engine_slot_4; break;
	case obj_oil_engine_part_5: my_slot_obj = obj_oil_engine_slot_5; break;
	default: my_slot_obj = -1; break;
}
