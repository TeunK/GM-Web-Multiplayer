//argument0 = id

//set up the particle system
sunflashpartsys_fire = part_system_create();
part_system_depth(sunflashpartsys_fire,0);

sunflashpart_fire = part_type_create(); //basic fire particle
mypart[argument0] = part_emitter_create(sunflashpartsys_fire);
    
//set up the particle type


    //how it looks
    part_type_sprite(sunflashpart_fire,spr_sunflash_fire,0,0,1);
    part_type_size(sunflashpart_fire,0.3,0.45,-.01,0);
    part_type_orientation(sunflashpart_fire,0,360,2,0,0);
    part_type_color3(sunflashpart_fire,c_orange,c_orange,c_red);
    part_type_alpha3(sunflashpart_fire,.25,1,0);
    part_type_blend(sunflashpart_fire,1);
    
    //how it moves
    part_type_direction(sunflashpart_fire,85,95,0,0);
    part_type_speed(sunflashpart_fire,3,6,0,0);

    //how long it lasts
    part_type_life(sunflashpart_fire,25,35);
    
    

    
    
    
    
