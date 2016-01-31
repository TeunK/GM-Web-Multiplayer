Particlescript7 = part_system_create();

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.6, 0.8, 0, 0.18);
part_type_scale(particle1,2.07, 0.41);
part_type_color3(particle1,c_red, c_aqua, 7534137);
part_type_alpha3(particle1,0.06, 0.04, 0.00);
part_type_speed(particle1,0.22, 0.64, 0.24, 0.41);
part_type_direction(particle1,17, 218, -1.97, 0.73);
part_type_gravity(particle1,0.2, 270);
part_type_orientation(particle1,231, 84, -0.72, 0.12, 1);
part_type_blend(particle1,1);
part_type_life(particle1,39, 120);

emitter1 = part_emitter_create(Particlescript7);
part_emitter_region(Particlescript7,emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript7,emitter1,particle1,10);