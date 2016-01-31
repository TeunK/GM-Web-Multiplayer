Particlescript6 = part_system_create();

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,0.88, 1.62, -0.08, 0.79);
part_type_scale(particle2,0.46, 1.46);
part_type_color3(particle2,3818713, 9261124, 935847);
part_type_alpha3(particle2,0.09, 0.25, 0.90);
part_type_speed(particle2,0.65, 7.90, 2.88, 0.23);
part_type_direction(particle2,0, 359, 3.95, 0.45);
part_type_gravity(particle2,0, 116);
part_type_orientation(particle2,98, 164, -0.94, 0.28, 1);
part_type_blend(particle2,1);
part_type_life(particle2,7, 24);

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.29, 0.91, 0.14, 0.20);
part_type_scale(particle1,0.13, 0.32);
part_type_color3(particle1,5311431, 4148214, 14311495);
part_type_alpha3(particle1,0.63, 0.25, 0.69);
part_type_speed(particle1,0.37, 6.24, -0.86, 0.92);
part_type_direction(particle1,0, 359, 7.23, 0.77);
part_type_gravity(particle1,0, 133);
part_type_orientation(particle1,108, 431, 0.95, 0.54, 1);
part_type_blend(particle1,1);
part_type_life(particle1,31, 108);
part_type_death(particle1,9, particle2);

p6emitter1 = part_emitter_create(Particlescript6);
part_emitter_region(Particlescript6,p6emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript6,p6emitter1,particle1,11);