/// @description 开采石油第一人游戏初始化
show_debug_message("first_man game created!");

// 游戏状态变量
drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;
obj_num = 9;  // 9个拼图部件

// =============================================================================
// 从房间中的slot对象自动获取目标位置
// 检测范围设置为slot精灵大小的基础上适当扩展，方便幼儿操作
// =============================================================================

// 检测容差值 (每边额外扩展的像素数)
var tolerance = 50;

// Part1 目标位置 - 从obj_first_part1_slot获取
var slot1 = instance_find(obj_first_part1_slot, 0);
if (slot1 != noone) {
    global.target_1_left = slot1.x - tolerance;
    global.target_1_right = slot1.x + sprite_get_width(spr_first_part1) + tolerance;
    global.target_1_top = slot1.y - tolerance;
    global.target_1_bottom = slot1.y + sprite_get_height(spr_first_part1) + tolerance;
    global.target_1_pos = [slot1.x, slot1.y];
}

// Part2 目标位置
var slot2 = instance_find(obj_first_part2_slot, 0);
if (slot2 != noone) {
    global.target_2_left = slot2.x - tolerance;
    global.target_2_right = slot2.x + sprite_get_width(spr_first_part2) + tolerance;
    global.target_2_top = slot2.y - tolerance;
    global.target_2_bottom = slot2.y + sprite_get_height(spr_first_part2) + tolerance;
    global.target_2_pos = [slot2.x, slot2.y];
}

// Part3 目标位置
var slot3 = instance_find(obj_first_part3_slot, 0);
if (slot3 != noone) {
    global.target_3_left = slot3.x - tolerance;
    global.target_3_right = slot3.x + sprite_get_width(spr_first_part3) + tolerance;
    global.target_3_top = slot3.y - tolerance;
    global.target_3_bottom = slot3.y + sprite_get_height(spr_first_part3) + tolerance;
    global.target_3_pos = [slot3.x, slot3.y];
}

// Part4 目标位置
var slot4 = instance_find(obj_first_part4_slot, 0);
if (slot4 != noone) {
    global.target_4_left = slot4.x - tolerance;
    global.target_4_right = slot4.x + sprite_get_width(spr_first_part4) + tolerance;
    global.target_4_top = slot4.y - tolerance;
    global.target_4_bottom = slot4.y + sprite_get_height(spr_first_part4) + tolerance;
    global.target_4_pos = [slot4.x, slot4.y];
}

// Part5 目标位置
var slot5 = instance_find(obj_first_part5_slot, 0);
if (slot5 != noone) {
    global.target_5_left = slot5.x - tolerance;
    global.target_5_right = slot5.x + sprite_get_width(spr_first_part5) + tolerance;
    global.target_5_top = slot5.y - tolerance;
    global.target_5_bottom = slot5.y + sprite_get_height(spr_first_part5) + tolerance;
    global.target_5_pos = [slot5.x, slot5.y];
}

// Part6 目标位置
var slot6 = instance_find(obj_first_part6_slot, 0);
if (slot6 != noone) {
    global.target_6_left = slot6.x - tolerance;
    global.target_6_right = slot6.x + sprite_get_width(spr_first_part6) + tolerance;
    global.target_6_top = slot6.y - tolerance;
    global.target_6_bottom = slot6.y + sprite_get_height(spr_first_part6) + tolerance;
    global.target_6_pos = [slot6.x, slot6.y];
}

// Part7 目标位置
var slot7 = instance_find(obj_first_part7_slot, 0);
if (slot7 != noone) {
    global.target_7_left = slot7.x - tolerance;
    global.target_7_right = slot7.x + sprite_get_width(spr_first_part7) + tolerance;
    global.target_7_top = slot7.y - tolerance;
    global.target_7_bottom = slot7.y + sprite_get_height(spr_first_part7) + tolerance;
    global.target_7_pos = [slot7.x, slot7.y];
}

// Part8 目标位置
var slot8 = instance_find(obj_first_part8_slot, 0);
if (slot8 != noone) {
    global.target_8_left = slot8.x - tolerance;
    global.target_8_right = slot8.x + sprite_get_width(spr_first_part8) + tolerance;
    global.target_8_top = slot8.y - tolerance;
    global.target_8_bottom = slot8.y + sprite_get_height(spr_first_part8) + tolerance;
    global.target_8_pos = [slot8.x, slot8.y];
}

// Part9 目标位置
var slot9 = instance_find(obj_first_part9_slot, 0);
if (slot9 != noone) {
    global.target_9_left = slot9.x - tolerance;
    global.target_9_right = slot9.x + sprite_get_width(spr_first_part9) + tolerance;
    global.target_9_top = slot9.y - tolerance;
    global.target_9_bottom = slot9.y + sprite_get_height(spr_first_part9) + tolerance;
    global.target_9_pos = [slot9.x, slot9.y];
}

// =============================================================================
// 各部件初始位置 (用于放错时返回) - 从实际part对象获取
// =============================================================================
var part1 = instance_find(obj_first_part1, 0);
if (part1 != noone) global.initial_pos_1 = [part1.x, part1.y];

var part2 = instance_find(obj_first_part2, 0);
if (part2 != noone) global.initial_pos_2 = [part2.x, part2.y];

var part3 = instance_find(obj_first_part3, 0);
if (part3 != noone) global.initial_pos_3 = [part3.x, part3.y];

var part4 = instance_find(obj_first_part4, 0);
if (part4 != noone) global.initial_pos_4 = [part4.x, part4.y];

var part5 = instance_find(obj_first_part5, 0);
if (part5 != noone) global.initial_pos_5 = [part5.x, part5.y];

var part6 = instance_find(obj_first_part6, 0);
if (part6 != noone) global.initial_pos_6 = [part6.x, part6.y];

var part7 = instance_find(obj_first_part7, 0);
if (part7 != noone) global.initial_pos_7 = [part7.x, part7.y];

var part8 = instance_find(obj_first_part8, 0);
if (part8 != noone) global.initial_pos_8 = [part8.x, part8.y];

var part9 = instance_find(obj_first_part9, 0);
if (part9 != noone) global.initial_pos_9 = [part9.x, part9.y];

// 创建教程弹窗
instance_create_layer(0, 0, "Instances", obj_first_man_tutorial);
