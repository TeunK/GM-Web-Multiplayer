//argument0 = ID

infernops = part_system_create();
infernopt = part_type_create();
infernope[argument0] = part_emitter_create(infernops);

/* Backup
part_system_depth(infernops,-99);
part_type_shape(infernopt,pt_shape_flare);
part_type_blend(infernopt,1);
part_type_alpha2(infernopt,1,0);
part_type_color_mix(infernopt,c_red,c_yellow);
part_type_direction(infernopt,90,90,0,0);
part_type_speed(infernopt,0.1,1,0,0);
part_type_size(infernopt,0.2,0.3,0,0);
part_type_life(infernopt,50,75);
*/

part_system_depth(infernops,-99);
part_type_shape(infernopt,pt_shape_flare);
part_type_blend(infernopt,1);
part_type_alpha2(infernopt,1,0);
part_type_color_mix(infernopt,c_red,c_yellow);
part_type_direction(infernopt,90,90,0,0);
part_type_speed(infernopt,0.1,1,0,0);
part_type_size(infernopt,0.25,0.35,0,0);
part_type_life(infernopt,20,45);
