//argument0 = sliding or shutting; sliding = 0 / shutting = 1
/*
if argument0 = 0
{
    if !SS_IsSoundPlaying(global.fx_HeavySlide)
    {
        SS_LoopSound(global.fx_HeavySlide);
    }
}

else if argument0 = 1
{
    if SS_IsSoundPlaying(global.fx_HeavySlide)
    {
        SS_StopSound(global.fx_HeavySlide)
    }
    if SS_IsSoundPlaying(global.fx_SlideShut)
    {
        SS_StopSound(global.fx_SlideShut);   
    }
    SS_PlaySound(global.fx_SlideShut);
}
*/
