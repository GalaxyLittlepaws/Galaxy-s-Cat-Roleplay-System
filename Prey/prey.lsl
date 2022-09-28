// This script is for the prey. You can configure the name of the prey, as well as respawn time below.
// You can also configure the prey's description, and the message that appears when a player picks it up.
///////////////////////////

// The name of the prey. This is what players will see when they pick it up.
string preyName = "Rabbit";

// The description of the prey. This is what players will see when they examine the prey.
string preyDescription = "A small rabbit.";

// The message that appears when a player picks up the prey.
string preyMessage = "You pick up the rabbit.";

// The time it takes for the prey to respawn, in seconds.
integer respawnTime = 60;

/////////// DO NOT EDIT BELOW THIS LINE //////////

// The time the prey was last picked up.
integer lastPickup = 0;

// The prey's position.
vector preyPosition;