Particlescript5 = part_system_create();

p5particle2 = part_type_create();
part_type_shape(p5particle2,pt_shape_line);
part_type_size(p5particle2,0.42, 0.85, -0.25, 0.88);
part_type_scale(p5particle2,0.56, 0.35);
part_type_color3(p5particle2,14641353, 7228017, 5201884);
part_type_alpha3(p5particle2,0.23, 0.80, 0.41);
part_type_speed(p5particle2,0.99, 9.53, -1.80, 0.46);
part_type_direction(p5particle2,0, 359, -3.19, 0.77);
part_type_gravity(p5particle2,0, 31);
part_type_orientation(p5particle2,228, 524, -0.78, 0.31, 1);
part_type_blend(p5particle2,1);
part_type_life(p5particle2,9, 25);

p5particle1 = part_type_create();
part_type_shape(p5particle1,pt_shape_sphere);
part_type_size(p5particle1,0.22, 0.85, -0.02, 0.88);
part_type_scale(p5particle1,0.85, 1.41);
part_type_color3(p5particle1,12210113, 16352456, 12931608);
part_type_alpha3(p5particle1,0.28, 0.81, 0.10);
part_type_speed(p5particle1,0.81, 5.16, 0.16, 0.08);
part_type_direction(p5particle1,0, 359, -9.87, 0.74);
part_type_gravity(p5particle1,0, 214);
part_type_orientation(p5particle1,339, 620, 0.07, 0.70, 1);
part_type_blend(p5particle1,1);
part_type_life(p5particle1,37, 39);
part_type_death(p5particle1,18, p5particle2);

p5emitter1 = part_emitter_create(Particlescript5);
part_emitter_region(Particlescript5,p5emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript5,p5emitter1,p5particle1,14);