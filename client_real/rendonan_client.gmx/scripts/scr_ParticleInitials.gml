Sname = part_system_create();

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_cloud);
part_type_size(particle2,0.30, 0.93, -0.14, 0.05);
part_type_scale(particle2,1.82, 0.69);
part_type_color3(particle2,c_yellow, c_navy, c_purple);
part_type_alpha3(particle2,0.47, 0.04, 0.28);
part_type_speed(particle2,0.80, 8.39, 0.47, 0.67);
part_type_direction(particle2,0, 359, -2.55, 0.18);
part_type_gravity(particle2,0, 44);
part_type_orientation(particle2,28, 230, 0.51, 0.90, 1);
part_type_blend(particle2,1);
part_type_life(particle2,3, 4);

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_line);
part_type_size(particle1,0.17, 0.20, -0.18, 0.32);
part_type_scale(particle1,1.73, 0.65);
part_type_color3(particle1,14600892, 4374906, 9499961);
part_type_alpha3(particle1,0.35, 0.02, 0.67);
part_type_speed(particle1,0.36, 4.76, -2.62, 0.81);
part_type_direction(particle1,0, 359, -4.38, 0.24);
part_type_gravity(particle1,0, 238);
part_type_orientation(particle1,287, 324, -0.17, 0.85, 1);
part_type_blend(particle1,1);
part_type_life(particle1,43, 126);
part_type_death(particle1,8, particle2);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,mouse_x,mouse_x,mouse_y,mouse_y,0,0);
part_emitter_stream(Sname,emitter1,particle1,7);
