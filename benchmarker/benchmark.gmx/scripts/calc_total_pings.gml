//calculate average pings
//re-init
for (i=0; i<array_length_1d(pings); i+=1)
{
    pings[i] = 0
}
//get total
with (obj_Network_controller)
{
    //add all pings
    for (i=0; i<array_length_1d(ping); i+=1)
    {
        other.pings[i] += ping[i];
        other.instances[i] = instances[i]
    }
}
//average all pings
if (instance_number(obj_Network_controller) > 0)
{
    for (i=0; i<array_length_1d(pings); i+=1)
    {
        pings[i] /= instances[i]
    }
}

return pings
