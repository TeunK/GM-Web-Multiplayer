Particlescript3 = part_system_create();

p3particle3 = part_type_create();
part_type_shape(p3particle3,pt_shape_flare);
part_type_size(p3particle3,0.29, 0.91, 0.14, 0.20);
part_type_scale(p3particle3,0.13, 0.32);

if obj_Boss1.state=2
{
    part_type_color3(p3particle3,c_lime, c_lime, c_lime);
}
else if obj_Boss1.state=4
{
    part_type_color3(p3particle3,c_orange, c_orange, c_orange);
}
else
{
    part_type_color3(p3particle3,c_teal, c_teal, c_teal);
}


part_type_alpha3(p3particle3,0.63, 0.25, 0.69);
part_type_speed(p3particle3,0.37, 6.24, -0.86, 0.92);
part_type_direction(p3particle3,0, 359, 7.23, 0.77);
part_type_gravity(p3particle3,0, 133);
part_type_orientation(p3particle3,108, 431, 0.95, 0.54, 1);
part_type_blend(p3particle3,1);
part_type_life(p3particle3,3, 8);




p3emitter1 = part_emitter_create(Particlescript3);
part_emitter_region(Particlescript3,p3emitter1,x,x,y,y,0,0);
part_emitter_stream(Particlescript3,p3emitter1,p3particle3,10);
