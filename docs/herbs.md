Herbs will be spawned from a spawn object according to the type of herb.

The spawn object will need to have the spawn_herb.lsl script inside. You can find the script in the Herb folder of this repository.

The spawn object will also need to have a "child" object for each type of herb you wish to spawn. These child objects will be used to spawn the herbs. They will need to have the child_herb.lsl spawn script inside. You can find the script in the Herb folder of this repository. Place the "child" herb inside the spawn object.

Configure the herb with the configuration options on the top of the spawn_herb script inside the spawn object. Please do not change anything under the warning, as it may cause issues.

Place the spawn object in the region where you wish to spawn the herbs. The herbs will appear according to the settings you set in the top of the script.

You can create as many different types of herbs as you wish. You can have multiple spawner objects in the same region, and they will all spawn herbs.

Please do not overdo the herb spawners. It is recommended to have no more than 10 spawners per region. If you have more than 10 spawners, you may experience lag. This will be tested properly at a later time. But also take into account any neighboring parcels if you're not using the entire region and what they may have rezzed.