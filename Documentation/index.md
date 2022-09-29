# Galaxy's Cat Roleplay system

## About

This is a game system for roleplaying as cats in Second Life, as cats. It is a work in progress, and is not yet ready for use.

It is currently tailored for the Maneki Neko avatar.

## Table of Contents:
- [About](#about)
- [Setup](#setup)
- [Herbs](herbs.md)
- [Medicine](medicine.md)
- [Prey](prey.md)
- [Ranks](ranks.md)
- [Skills](skills.md)

## Setup
### Land & Group
You will first need some land in Second Life. You'll want to ensure there is plenty of room for players to run around, explore, and fight. You'll also want to ensure there is plenty of room for prey and herbs to spawn. A quarter of a region is probably a good starting point.

You will also need a group for your clan. You can create one in the group management panel in your Second Life Viewer. You will need to set the group's "Open Enrollment" setting to "Invite Only". You will also need to set the group's "Enrollment Fee" to "Free", or according to a fee you wish to set. All players will need to be in this group and have their tag active to play.

Set up the group's roles according to how you expect to play. Deputies, Clan Leaders, Warriors, Medicine Cat, or other roles you wish to use.

Deed the land to the group. You can do this in the land management panel in your Second Life Viewer. Then, set access to only allow members of the group in. This will help keep the game immersive and prevent unwanted visitors.

### Scripts & Objects
Note: Each server currently supportsone clan. If you wish to have multiple clans, you will need to set up a separate server for each clan. (Not yet implemented)

Next, you will need to create your server object. This can look like whatever you want, or be invisible. You will use this to enable the roleplay system on your land, and configure how it works for your game. It will need to have the server scripts and configuration notecard inside. You can find the scripts and configuration notecard in the Server folder of this repository.

You will also need to have your HUD giver object. This can look like whatever you want. You will use this to give players their HUDs. It will need to have the hud_giver.lsl script inside. You can find the script in the HUD folder of this repository.

You will also need to set out your spawn objects for prey and herbs according to your preferewnce, and the documentation for each. You can find the scripts in the Prey and Herb folders of this repository. You can read the documentation for each in the Documentation folder of this repository.

### Configuration
