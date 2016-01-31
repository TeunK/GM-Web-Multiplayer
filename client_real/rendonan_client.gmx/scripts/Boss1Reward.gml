    obj_Controller.ownexp += ExperienceContent;
    saypc(name +" died.",c_white);
    saypc("You earned" +string(round(ExperienceContent)) +" experience",c_lime);
    //+ Reward to Player
    var drop;
    
    //CHANCE 1
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=1}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 2
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }

    //CHANCE 3
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 4
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 5
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 6
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 7
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 8
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 9
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 10
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 11
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 1 + round(random(19))
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }
    
    //CHANCE 12
    drop=round(random(droprate)); //50% drop rate
    if drop=1 
    {
        //Item ID drop range
        var itemid, quantity;
        itemid = 20
    
        //Define quantity of drop
        if itemid == 1 //coins
        {quantity = 1 + round(random(1345))}
        else if itemid >1 && itemid < 20 //potions
        {quantity=1+round(random(22));}
        else if itemid >= 20 && itemid < 32 //armor
        {quantity=1}
        else
        {quantity=120398571209687}
        
        
        //return result
        create=instance_create(x,y,obj_Items)
        create.itemid=itemid;
        create.quantity=quantity;
    }