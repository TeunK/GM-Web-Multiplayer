Particlescript4 = part_system_create();

p4particle1 = part_type_create();
part_type_shape(p4particle1,pt_shape_flare);
part_type_size(p4particle1,1.94, 2.47, 0, 0.18);
part_type_scale(p4particle1,2.07, 0.41);
part_type_color3(p4particle1,4020276, 12496873, 7534137);
part_type_alpha3(p4particle1,0.42, 55.26, 0.54);
part_type_speed(p4particle1,0.72, 9.64, 0.24, 0.41);
part_type_direction(p4particle1,17, 218, -1.97, 0.73);
part_type_gravity(p4particle1,0, 143);
part_type_orientation(p4particle1,231, 84, -0.72, 0.12, 1);
part_type_blend(p4particle1,1);
part_type_life(p4particle1,39, 120);

p4emitter1 = part_emitter_create(Particlescript4);
part_emitter_region(Particlescript4,p4emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript4,p4emitter1,p4particle1,10);
