grab = false;

xx = 0;
yy = 0;

origin_box_id = 0;
initial_x = x;
initial_y = y;
rest_depth = 0;

switch(object_index) {
	case obj_green_vehicle_bike_1: my_slot_objs = [obj_green_vehicle_slot_bike_1]; break;
	case obj_green_vehicle_bike_2: my_slot_objs = [obj_green_vehicle_slot_bike_2]; break;
	case obj_green_vehicle_bike_3: my_slot_objs = [obj_green_vehicle_slot_bike_3, obj_green_vehicle_slot_bike_4]; break;
	case obj_green_vehicle_bike_4: my_slot_objs = [obj_green_vehicle_slot_bike_3, obj_green_vehicle_slot_bike_4]; break;
	case obj_green_vehicle_bicycle_1: my_slot_objs = [obj_green_vehicle_slot_bicycle_1]; break;
	case obj_green_vehicle_bicycle_2: my_slot_objs = [obj_green_vehicle_slot_bicycle_2, obj_green_vehicle_slot_bicycle_5]; break;
	case obj_green_vehicle_bicycle_3: my_slot_objs = [obj_green_vehicle_slot_bicycle_3]; break;
	case obj_green_vehicle_bicycle_4: my_slot_objs = [obj_green_vehicle_slot_bicycle_4]; break;
	case obj_green_vehicle_bicycle_5: my_slot_objs = [obj_green_vehicle_slot_bicycle_2, obj_green_vehicle_slot_bicycle_5]; break;
	case obj_green_vehicle_car_1: my_slot_objs = [obj_green_vehicle_slot_car_1]; break;
	case obj_green_vehicle_car_2: my_slot_objs = [obj_green_vehicle_slot_car_2]; break;
	case obj_green_vehicle_car_3: my_slot_objs = [obj_green_vehicle_slot_car_3, obj_green_vehicle_slot_car_8]; break;
	case obj_green_vehicle_car_4: my_slot_objs = [obj_green_vehicle_slot_car_4]; break;
	case obj_green_vehicle_car_5: my_slot_objs = [obj_green_vehicle_slot_car_5]; break;
	case obj_green_vehicle_car_6: my_slot_objs = [obj_green_vehicle_slot_car_6]; break;
	case obj_green_vehicle_car_7: my_slot_objs = [obj_green_vehicle_slot_car_7]; break;
	case obj_green_vehicle_car_8: my_slot_objs = [obj_green_vehicle_slot_car_3, obj_green_vehicle_slot_car_8]; break;
	default: my_slot_objs = []; break;
}
