//argument0 = ID

galeps = part_system_create();
galept = part_type_create();
galepe[argument0] = part_emitter_create(galeps);

/* Backup
part_system_depth(galeps,-99);
part_type_shape(galept,pt_shape_flare);
part_type_blend(galept,1);
part_type_alpha2(galept,1,0);
part_type_color_mix(galept,c_red,c_yellow);
part_type_direction(galept,90,90,0,0);
part_type_speed(galept,0.1,1,0,0);
part_type_size(galept,0.2,0.3,0,0);
part_type_life(galept,50,75);
*/

part_system_depth(galeps,-99);
part_type_shape(galept,pt_shape_cloud);
part_type_blend(galept,1);
part_type_alpha2(galept,0.1,0);
part_type_color_mix(galept,c_white,c_gray);
part_type_direction(galept,90,90,0,0);
part_type_speed(galept,6,9,0,0);
part_type_size(galept,0.8,1.4,0,0);
part_type_life(galept,10,20);
