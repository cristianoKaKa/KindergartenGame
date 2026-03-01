/// @description 送油宝宝回家 - 初始化
// 游戏规则：黑色油滴拖拽到银色油罐车，黄色和棕色油滴拖拽到黑色油罐车

show_debug_message("obj_baby_drop_back_home_player created!");

// 游戏状态
global.in_box_cnt = 0;		// 已成功放置的油滴数量
_succeed = false;			// 游戏是否完成
global.total_drops = 4;		// 总共需要放置的油滴数量

// 银色油罐车上已放置的黑色油滴数量 (最多2个)
global.silver_car_cnt = 0;

// 黑色油罐车上已放置的油滴数量 (最多2个: 黄色+棕色)
global.black_car_cnt = 0;

// 油滴放置位置 - 银色油罐车 (黑色油滴放这里)
// 银色油罐车位置 x=896, y=416，宽度600
global.silver_car_pos = [
	[896 + 200, 416 - 140],		// 第一个油滴位置
	[896 + 350, 416 - 140]		// 第二个油滴位置
];

// 油滴放置位置 - 黑色油罐车 (黄色和棕色油滴放这里)
// 黑色油罐车位置 x=96, y=448，宽度600
global.black_car_pos = [
	[96 + 200, 448 - 140],		// 第一个油滴位置
	[96 + 350, 448 - 140]		// 第二个油滴位置
];