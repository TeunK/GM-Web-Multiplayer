//Experience and Level system
if ownexp  > ownexptotal
{
    ownexpleft = ownexp-ownexptotal
    
    //LEVEL UP; grats :)
    if ownexp  >=ownexptotal        
    {
        SS_PlaySound(global.fx_LevelUp);
        ownstatpoint+=7
        ownexp=0;
        ownlevel+=1;
        ownexptotal = round((ownexptotal*1.3));
        ownexp+=ownexpleft;
        ownexpleft=0
        levelupsign=1;
    }
    
}

if ownexp < 0
{ownexp=0}