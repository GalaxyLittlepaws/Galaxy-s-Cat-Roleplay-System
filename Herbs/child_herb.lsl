integer spawnTime = 600; //How long the herbs will cycle in spawn/death, change in HerbSpawner as well


// This checks that the player is actually able to see the herb
// From https://github.com/John-Nagle/lslutils/blob/master/touchtester.lsl
string freetouchpath(integer detected_num)
{
    key avi = llDetectedKey(detected_num);                 // first toucher
    vector avpos = llDetectedPos(detected_num);            // position of touching avi
    vector touchpos = llDetectedTouchPos(detected_num);    // position of touch
    list raycast = llCastRay(avpos, touchpos, []);         // check space between them
    integer status = llList2Integer(raycast,-1);    // last element is status
    if (status == 0)                            // ray hit nothing
    {   return(""); }                           // no obstacle
    //  Hard case. Check for ray hitting avi or object being touched. Those don't count.
    integer linknum = llDetectedLinkNumber(detected_num);  // which link was touched
    key linkkey = llGetLinkKey(linknum);        // key of link touched
    integer i;
    for (i=0; i<llGetListLength(raycast)-1; i = i+2)// list obstacles
    {   key obstacle = llList2Key(raycast,i);   // key of obstacle
        if (obstacle != linkkey && obstacle != avi)  // not false alarm
        {   string s = llKey2Name(obstacle);        // name of obstacle
            if (s == "") { s = "UUID " + (string)obstacle; }  // name lookup failed
            return(s);                           // return name of obstacle
        }
    }
    return("");                                 // true if no problem
}


default
{
    state_entry()
    {
        llSetTimerEvent(spawnTime);
    }
    
    touch_start(integer total_number)
    {
        string obstruction = freetouchpath(0);      // touched. Is it valid?
        if (obstruction == "")
        {   
        llSay(0, "You gathered the " + llGetObjectName( )); // Yes, is valid
        llDie();
        /* TODO: Add "gather" function that will +1 the herb in the player's inventory */
        }
    } 

    timer()
    {
        llDie();
    }
}
