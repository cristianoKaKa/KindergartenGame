/// @description 小小的油田游戏初始化
show_debug_message("obj little_oil_field created!");
// audio_play_sound(snd_bg, 0, true);

// 游戏状态
global.in_box_cnt = 0;
_succeed = false;
obj_num = 12;  // 4种材料 × 3种尺寸 = 12个可拖拽物品

// ===== 新玩法设计 =====
// 右边有4个box（obj_little_oil_field_box_1~4），每个box对应一种材料
// 玩家需要将左边的材料拖到对应材料的box中
// 拖入正确box时，按拖动顺序从上到下堆叠
// 全部放完后检查每列是否按从小到大排列

// ----- 4个Box的区域设置 -----
// 基于房间中实际box位置计算:
// spr_red_box: 500x359, scaleX=0.36, scaleY=1.89
// 实际尺寸: 180x679
// box1: x=512, box2: x=800, box3: x=1088, box4: x=1344, 全部 y=192

global.box1 = {
    left: 512, right: 692, top: 192, bottom: 871,
    snap_x: 602,       // box中心x (512 + 90)
    start_y: 320,      // 第一个物品的y坐标（向下调整）
    item_gap: 200,     // 物品之间的间距
    items: [],         // 存放已放入的物品尺寸 [100/150/200]
    instances: []      // 存放已放入的物品实例id
};
global.box2 = {
    left: 800, right: 980, top: 192, bottom: 871,
    snap_x: 890,       // box中心x (800 + 90)
    start_y: 320,
    item_gap: 200,
    items: [],
    instances: []
};
global.box3 = {
    left: 1088, right: 1268, top: 192, bottom: 871,
    snap_x: 1178,      // box中心x (1088 + 90)
    start_y: 320,
    item_gap: 200,
    items: [],
    instances: []
};
global.box4 = {
    left: 1344, right: 1524, top: 192, bottom: 871,
    snap_x: 1434,      // box中心x (1344 + 90)
    start_y: 320,
    item_gap: 200,
    items: [],
    instances: []
};

// 将box数组化方便遍历
global.boxes = [global.box1, global.box2, global.box3, global.box4];

// 创建教程弹窗
instance_create_layer(0, 0, "Instances", obj_little_oil_field_tutorial);