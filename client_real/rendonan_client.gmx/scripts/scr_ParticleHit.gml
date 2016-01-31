pHitFX = part_system_create();

particlehit = part_type_create();
part_type_shape(particlehit,pt_shape_spark);
part_type_alpha1(particlehit,0.02);
part_type_alpha2(particlehit,0.05,0.2);
part_type_size(particlehit,0.3, 0.42, -0.14, 0.06);
part_type_scale(particlehit,0.83, 0.59);
part_type_color3(particlehit,c_red, c_orange, c_yellow);
part_type_alpha3(particlehit,0.05, 0.9, 0.02);
part_type_speed(particlehit,0.35, 5.86, -1.52, 0.73);
part_type_direction(particlehit,0, 359, 5.91, 0.86);
part_type_gravity(particlehit,0, 317);
part_type_orientation(particlehit,164, 305, 0.11, 0.68, 1);
part_type_blend(particlehit,1);
part_type_life(particlehit,1, 1.5);

hitfxemitter = part_emitter_create(pHitFX);
part_emitter_region(pHitFX,hitfxemitter,x-4,x+4,y-4,y+4,0,0);
part_emitter_stream(pHitFX,hitfxemitter,particlehit,14);