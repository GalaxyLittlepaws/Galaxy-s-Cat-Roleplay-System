string herb = "Herb";    //Change this to name of herb object inside
integer radius = 1;      //The radius of how far to spawn the herb, in meters
integer spawnTime = 600; //How long the herbs will cycle in spawn/death, change in Herb as well

vector wasPoint(float radius) {
    float x = llPow(-1, 1 + (integer) llFrand(2)) * llFrand(radius*2);
    float y = llPow(-1, 1 + (integer) llFrand(2)) * llFrand(radius*2);
    if(llPow(x,2) + llPow(y,2) + 0.0 <= llPow(radius,2))
        return <x, y, 0.0>;
    return wasPoint(radius);
}

default
{
    on_rez(integer start_param)
    {
        llResetScript();
    }
    
    changed(integer change) 
    {
        if(change & CHANGED_INVENTORY) llResetScript();
    }
    
    timer() 
    {
        llSetTimerEvent(spawnTime);
        llRezObject(herb, llGetPos() + wasPoint(radius), ZERO_VECTOR, ZERO_ROTATION, 0);
    }
}