Particlescript2 = part_system_create();

p2particle1 = part_type_create();
part_type_shape(p2particle1,pt_shape_flare);
part_type_size(p2particle1,0.6, 0.8, 0, 0.18);
part_type_scale(p2particle1,2.07, 0.41);
part_type_color3(p2particle1,c_red, c_orange, 7534137);
part_type_alpha3(p2particle1,0.16, 0.16, 0.14);
part_type_speed(p2particle1,0.72, 9.64, 0.24, 0.41);
part_type_direction(p2particle1,17, 218, -1.97, 0.73);
part_type_gravity(p2particle1,0.2, 270);
part_type_orientation(p2particle1,231, 84, -0.72, 0.12, 1);
part_type_blend(p2particle1,1);
part_type_life(p2particle1,39, 120);

p2emitter1 = part_emitter_create(Particlescript2);
part_emitter_region(Particlescript2,p2emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript2,p2emitter1,p2particle1,10);
