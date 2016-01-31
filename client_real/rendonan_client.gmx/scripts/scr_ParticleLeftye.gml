partLefteye = part_system_create()


Lefteyeparticle1 = part_type_create()
part_type_shape(Lefteyeparticle1,pt_shape_cloud)
part_type_size(Lefteyeparticle1,0.13,0.73,0,0)
part_type_scale(Lefteyeparticle1,1,1)
part_type_color3(Lefteyeparticle1,2631935,2097382,3343025)
part_type_alpha3(Lefteyeparticle1,0.63,0.36,0.08)
part_type_speed(Lefteyeparticle1,3.02,4.07,-0.07,0)
part_type_direction(Lefteyeparticle1,0,359,0,0)
part_type_gravity(Lefteyeparticle1,0,270)
part_type_orientation(Lefteyeparticle1,0,0,0,0,1)
part_type_blend(Lefteyeparticle1,1)
part_type_life(Lefteyeparticle1,10,20)

Lefteyeemitter1 = part_emitter_create(partLefteye)
part_emitter_region(partLefteye,Lefteyeemitter1,x,x,y,y,0,0)
part_emitter_stream(partLefteye,Lefteyeemitter1,Lefteyeparticle1,10)



