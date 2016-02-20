partRighteye = part_system_create()


Righteyeparticle1 = part_type_create()
part_type_shape(Righteyeparticle1,pt_shape_flare)
part_type_size(Righteyeparticle1,0.13,0.73,0,0)
part_type_scale(Righteyeparticle1,1,1)
part_type_color3(Righteyeparticle1,2631935,2097382,3343025)
part_type_alpha3(Righteyeparticle1,0.63,0.36,0.08)
part_type_speed(Righteyeparticle1,3.02,4.07,-0.07,0)
part_type_direction(Righteyeparticle1,0,359,0,0)
part_type_gravity(Righteyeparticle1,0,270)
part_type_orientation(Righteyeparticle1,0,0,0,0,1)
part_type_blend(Righteyeparticle1,1)
part_type_life(Righteyeparticle1,10,20)

Righteyeemitter1 = part_emitter_create(partRighteye)
part_emitter_region(partRighteye,Righteyeemitter1,x,x,y,y,0,0)
part_emitter_stream(partRighteye,Righteyeemitter1,Righteyeparticle1,10)
