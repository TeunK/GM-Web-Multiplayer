
    
    if (string_pos("teun",argument0) +
        string_pos("spela",argument0) +
        string_pos("hunny",argument0) +
        string_pos("sweetie",argument0) +
        string_pos("hun",argument0) +
        string_pos("<3",argument0)) > 0
        {saypc("Kissies!",c_aqua);};
    
    if (string_pos("help",argument0) +
        string_pos("112",argument0) +
        string_pos("911",argument0) +
        string_pos("hint",argument0) +
        string_pos("tip",argument0) +
        string_pos("stuck",argument0)) > 0
        {saypc("Welcome to Rendonan!",c_aqua);saypc("Change skill selection with U/I",c_aqua);saypc("Jump with K",c_aqua);saypc("Talk/attack with J",c_aqua);saypc("Move with W,A,S,D",c_aqua);saypc("More info on www.rendonan.com",c_aqua)};
        
    if (string_pos("hello",argument0) +
        string_pos("hey",argument0) +
        string_pos("whats up",argument0) +
        string_pos("wazzup",argument0) +
        string_pos("hi",argument0)) > 0 
        {saypc("Hello player, how are you?",c_aqua)}
    
    if (string_pos("good",argument0) +
        string_pos("great",argument0) +
        string_pos("perfect",argument0) +
        string_pos("fine",argument0) +
        string_pos("ok",argument0)) > 0
        {saypc("That's nice :)",c_aqua)};
        
    if (string_pos("how about you",argument0) +
        string_pos("u?",argument0) +
        string_pos("you?",argument0)) > 0
        {saypc("I'm fine, thank you",c_aqua)};
    
    if (string_pos("fuck",argument0) +
        string_pos("fck",argument0) +
        string_pos("fuk",argument0) +
        string_pos("ass",argument0) +
        string_pos("asshole",argument0) +
        string_pos("noob",argument0) +
        string_pos("sucker",argument0) +
        string_pos("stupid",argument0) +
        string_pos("idiot",argument0) +
        string_pos("bitch",argument0) +
        string_pos("retard",argument0) +
        string_pos("kuk",argument0) +
        string_pos("trololol",argument0) +
        string_pos("dick",argument0) +
        string_pos("kut",argument0) +
        string_pos("godver",argument0) +
        string_pos("godverdomme",argument0) +
        string_pos("fitta",argument0)
        ) > 0
        {saypc("The Game",c_aqua);saypc("Does",c_aqua);saypc("Not",c_aqua);saypc("Really",c_aqua);saypc("Like",c_aqua);saypc("The things you are trying to say.",c_aqua)};
        
    if (string_pos("bleh",argument0) +
        string_pos("boring",argument0) +
        string_pos("bored",argument0) +
        string_pos("blalala",argument0) +
        string_pos("zzz",argument0) +
        string_pos("sigh",argument0)) > 0
        {saypc("Tired or annoyed?",c_aqua); saypc("Perhaps its wise to take a break",c_aqua)};
        
    if (string_pos("woot",argument0) +
        string_pos("happy",argument0) +
        string_pos("excited",argument0) +
        string_pos("lol",argument0) +
        string_pos("haha",argument0) +
        string_pos("hehe",argument0)) > 0
        {saypc("^_^",c_aqua);};
        
    if (string_pos("maker",argument0) +
        string_pos("creator",argument0) +
        string_pos("god",argument0) +
        string_pos("designer",argument0)) > 0
        {saypc("Teun Kokke",c_aqua)};
        