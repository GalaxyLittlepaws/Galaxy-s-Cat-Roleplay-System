// This script is for the herbs. You can configure the name of the herb, as well as respawn time below.
// You can also configure the herb's description, and the message that appears when a player picks it up.
///////////////////////////

// The name of the herb. This is what players will see when they pick it up.
string herbName = "Catnip";

// The description of the herb. This is what players will see when they examine the herb.
string herbDescription = "A small plant with a strong sweet smell.";

// The message that appears when a player picks up the herb.
string herbMessage = "You pick up the catnip.";

// The time it takes for the herb to respawn, in seconds.
integer respawnTime = 60;

// The time the herb will stay active
integer activeTime = 60;

// The season the herb spawns in as a list, include the number if it spawns in that season
// 0 = Spring
// 1 = Summer
// 2 = Autumn
// 3 = Winter
list herbSeason = [0,1,2,3];

////////// DO NOT EDIT BELOW THIS LINE //////////

// The time the herb was last picked up.
integer lastPickup = 0;

// The herb's position.
vector herbPosition;

// Current weather condition
string weatherCondition;

// Current season
integer season;

DestroyObject()
{
    string msg = "DESTROY";
    llRegionSayTo(target, channel, msg);
}

default
{
    state_entry()
    {
        // Get the herb's position.
        herbPosition = GetPosition();
        
        // Get the current weather condition.
        weatherCondition = GetWeatherCondition();
        
        // Get the current season.
        season = GetSeason();
        
        // If the herb is not in the list of seasons it spawns in, destroy it.
        if (herbSeason.find(season) == -1)
        {
            DestroyObject();
        }
        
        // If the weather condition is not clear, destroy the herb.
        if (weatherCondition != "Clear")
        {
            DestroyObject();
        }
    }
}