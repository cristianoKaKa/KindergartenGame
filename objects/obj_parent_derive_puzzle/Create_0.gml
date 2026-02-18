/// @description 石油衍生品 - 可拖拽物品父类初始化
grab = false;

xx = 0;
yy = 0;

origin_box_id = 0;
initial_x = x;
initial_y = y;

// 每个拼图块对应的slot对象映射
switch(object_index) {
	case obj_derive_puzzle_skirt_1: my_slot_obj = obj_derive_puzzle_slot_skirt_1; break;
	case obj_derive_puzzle_skirt_2: my_slot_obj = obj_derive_puzzle_slot_skirt_2; break;
	case obj_derive_puzzle_skirt_3: my_slot_obj = obj_derive_puzzle_slot_skirt_3; break;
	case obj_derive_puzzle_lipstick_1: my_slot_obj = obj_derive_puzzle_slot_lipstick_1; break;
	case obj_derive_puzzle_lipstick_2: my_slot_obj = obj_derive_puzzle_slot_lipstick_2; break;
	case obj_derive_puzzle_hat_1: my_slot_obj = obj_derive_puzzle_slot_hat_1; break;
	case obj_derive_puzzle_hat_2: my_slot_obj = obj_derive_puzzle_slot_hat_2; break;
	case obj_derive_puzzle_vest_1: my_slot_obj = obj_derive_puzzle_slot_vest_1; break;
	case obj_derive_puzzle_vest_2: my_slot_obj = obj_derive_puzzle_slot_vest_2; break;
	case obj_derive_puzzle_bottle_1: my_slot_obj = obj_derive_puzzle_slot_bottle_1; break;
	case obj_derive_puzzle_bottle_2: my_slot_obj = obj_derive_puzzle_slot_bottle_2; break;
	case obj_derive_puzzle_feeder_1: my_slot_obj = obj_derive_puzzle_slot_feeder_1; break;
	case obj_derive_puzzle_feeder_2: my_slot_obj = obj_derive_puzzle_slot_feeder_2; break;
	case obj_derive_puzzle_shirt_1: my_slot_obj = obj_derive_puzzle_slot_shirt_1; break;
	case obj_derive_puzzle_shirt_2: my_slot_obj = obj_derive_puzzle_slot_shirt_2; break;
	case obj_derive_puzzle_shirt_3: my_slot_obj = obj_derive_puzzle_slot_shirt_3; break;
	case obj_derive_puzzle_pill_1: my_slot_obj = obj_derive_puzzle_slot_pill_1; break;
	case obj_derive_puzzle_pill_2: my_slot_obj = obj_derive_puzzle_slot_pill_2; break;
	case obj_derive_puzzle_house_1: my_slot_obj = obj_derive_puzzle_slot_house_1; break;
	case obj_derive_puzzle_house_2: my_slot_obj = obj_derive_puzzle_slot_house_2; break;
	default: my_slot_obj = -1; break;
}
