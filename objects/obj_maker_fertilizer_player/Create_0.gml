/// @description 创造堆肥游戏初始化
show_debug_message("maker_fertilizer game created!");

// 游戏状态
global.in_box_cnt = 0;
_succeed = false;
obj_num = 17;  // 6 paper + 6 food + 5 leave = 17个可拖拽物品

// ===== 3个Box（bg_brown）区域设置 =====
// 根据room中bg_brown实例位置计算:
// spr_fertilizer_bg_brown: 1051 x 200, origin(0,0)
// bg_brown_1 at (544, 64)  -> paper区域
// bg_brown_2 at (544, 352) -> food区域
// bg_brown_3 at (544, 640) -> leave区域
// 每个bg_brown中，_1标签对象占据最左侧(~100px)
// 可拖拽物品从标签右侧开始从左到右排列

global.fertilizer_box1 = {
    left: 544, right: 1595, top: 64, bottom: 264,
    start_x: 690,       // 物品吸附起始x (标签右侧留出间距)
    snap_y: 114,         // 垂直居中: 64 + 50
    item_gap: 130,       // 物品之间的x间距 (100px宽 + 30px间隙)
    instances: []        // 存放已放入的物品实例id
};

global.fertilizer_box2 = {
    left: 544, right: 1595, top: 352, bottom: 552,
    start_x: 690,
    snap_y: 402,         // 垂直居中: 352 + 50
    item_gap: 130,
    instances: []
};

global.fertilizer_box3 = {
    left: 544, right: 1595, top: 640, bottom: 840,
    start_x: 690,
    snap_y: 700,         // 垂直居中: 640 + 60
    item_gap: 130,
    instances: []
};

// 将box数组化方便遍历
global.fertilizer_boxes = [global.fertilizer_box1, global.fertilizer_box2, global.fertilizer_box3];

// TODO: 创建教程弹窗
// 需要在GameMaker中创建 obj_make_fertilizer_tutorial (继承 obj_tutorial_parent)
// 以及对应的教程sprite和sound资源后，取消下面的注释:
// instance_create_layer(0, 0, "Instances", obj_make_fertilizer_tutorial);
