/// @description 钻井设备slot阴影初始化
image_alpha = 0.3;
depth = 10;
filled = false;

if (object_index == obj_drill_equip_slot_table) {
	depth = 14;
} else if (object_index == obj_drill_equip_slot_yellow_block) {
	depth = 12;
} else if (object_index == obj_drill_equip_slot_orange_block) {
	depth = 8;
}
