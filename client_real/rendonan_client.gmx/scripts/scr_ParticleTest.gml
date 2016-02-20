Sname = part_system_create();

particle2 = part_type_create();
part_type_alpha1(particle2,0.3);
part_type_shape(particle2,pt_shape_sphere);
part_type_size(particle2,0.07, 0.92, -0.22, 0.26);
part_type_scale(particle2,1.96, 1.74);
part_type_color3(particle2,12615297, 12510256, 9432834);
part_type_alpha3(particle2,0.5, 0.2, 0.3);
part_type_speed(particle2,0.22, 7.02, -1.96, 0.75);
part_type_direction(particle2,0, 359, 0.29, 0.11);
part_type_gravity(particle2,0, 341);
part_type_orientation(particle2,161, 191, 0.16, 0.03, 1);
part_type_blend(particle2,1);
part_type_life(particle2,8, 18);

particle1 = part_type_create();
part_type_alpha1(particle1,0.3);
part_type_shape(particle1,pt_shape_cloud);
part_type_size(particle1,0.41, 0.94, 0.11, 0.53);
part_type_scale(particle1,1.54, 1.23);
part_type_color3(particle1,5905196, 4922658, 3266678);
part_type_alpha3(particle1,0.3, 0.1, 0.1);
part_type_speed(particle1,0.70, 4.01, 1.37, 0.06);
part_type_direction(particle1,0, 359, 8.91, 0.56);
part_type_gravity(particle1,0, 180);
part_type_orientation(particle1,216, 301, 0.36, 0.43, 1);
part_type_blend(particle1,1);
part_type_life(particle1,37, 67);
part_type_death(particle1,9, particle2);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_stream(Sname,emitter1,particle1,14);
