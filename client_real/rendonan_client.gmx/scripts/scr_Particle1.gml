Particlescript1 = part_system_create();

p1particle1 = part_type_create();
part_type_shape(p1particle1,pt_shape_flare);
part_type_size(p1particle1,0.6, 0.8, 0, 0.18);
part_type_scale(p1particle1,2.07, 0.41);
part_type_color3(p1particle1,c_dkgray, c_aqua, 7534137);
part_type_alpha3(p1particle1,0.16, 0.02, 0.00);
part_type_speed(p1particle1,0.22, 0.64, 0.24, 0.41);
part_type_direction(p1particle1,17, 218, -1.97, 0.73);
part_type_gravity(p1particle1,0.2, 270);
part_type_orientation(p1particle1,231, 84, -0.72, 0.12, 1);
part_type_blend(p1particle1,1);
part_type_life(p1particle1,39, 120);

p1emitter1 = part_emitter_create(Particlescript1);
part_emitter_region(Particlescript1,p1emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript1,p1emitter1,p1particle1,10);