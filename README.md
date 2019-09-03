# Postal 2: Share the Doom 03.09.2019

Status:

[Weapons]
- Baton 				|| Primary and Secondary attack (+proper sounds) are done, needs last touching fixes if NPCs are done=NPC Headache State
- Petition Clipboard	|| Very basic functionality, lacks 3 continous conversations, only 1 is hardcoded; unfinished
- Cowhead               || Only animation frames are done; unfinished
- Gascan				|| Primary and Secondary attack (+proper sounds) are done but needs fixing/patching, secondary attack **relies on Matchbox projectile**
- Grenade				|| Only animation frames are done; unfinished
- Kicking				|| Done, but heavily relies on how Blood is spawned when an NPC/Entity is hurt | Bug(s): Polyobjects doesn't work when kicking '
- Machete				|| Primary attack is done, secondary attack needs some work: model for the boomerang, hit every actor ONCE when passing
- M-16					|| Muzzle flashes are missing and screen shake
- Matchbox				|| Only animation frames are done; unfinished (atm it will not work with gasoline)
- Molotov				|| Only animation frames are done; unfinished
- Napalm Launcher		|| Only animation frames are done; unfinished
- Holster				|| Done | Idea(s): Add the multiplayer hand signs?
- Pistol				|| Muzzle flashes are missing and screen shake
- Missile Launcher		|| Partially done but terribly, needs reworking, also need a model for the missile and effects
- Scissors				|| Only animation frames are done; unfinished
- Scythe				|| Completely unfinished
- Shotgun				|| Muzzle flashes are missing and screen shake
- Shovel				|| Missing screen shake, relies on special puff actor that creates smoke on impact
- Sledge				|| Only animation frames are done; code is terrible
- Sniper				|| Only animation frames are done; unfinished
- Tazer					|| Only animation frames are done; unfinished
- Urethra				|| Partially done, needs Postal 2 pissing effects
- W.M.D.				|| Only animation frames are done; unfinished; HUD icon is improperly placed

[NPCs]

The very core of the NPCs are still being worked on, so at the moment we only have Postal Dude, Krotchy, and a cop model just for the arrest/wanted system
I will try to list what is completed and what is bugging me with the AI that I made

||Bystanders||

- See/Look functionality
They are able to act upon their surroundings and events, but limited to only the Player, themselves, and monsters
It lacks: - Unique reacting to gunshots, killings, etc.. (currently they can only react 2 ways, either become hostile and start shooting the culprit, or flee)
		  - Bigger weapon than yours means you should flee mister
		  - More reacting to Postal Dude's schlong, reacting to getting pissed on '
		  - Act differently to some DOOM monsters
		  - Everything related to cops

- Bumping functionality
They are able to react when the Player or someone else bumps into them, just like in Postal 2
It lacks: - none, it behaves exactly like in Postal 2

- Randomized weapons
Currently it is not skill-specific, but every NPC spawns with a random chance of being able to spawn with a weapon "holstered"
NPCs that have no weapon will automatically make them non-hostile, so they will ALWAYS flee

- Hostility
NPCs will pursue their targets almost always, NPCs without weapons will always flee
It lacks: - NPCs will forget about their targets, so if their primary target died the previous target will be ignored by them
		  - Fleeing NPCs will flee for forever
		  
- Cops
Cop NPCs can give the Player wanted points, they will always pursue the Player on sight
It lacks: - Pretty much everything you know about how cops work in Postal 2; but the wanted meter will show up on the HUD

- Headshotting
The player is able to headshot an NPC and that will make their heads blow up, same goes for the NPCs themselves if they have a Shotgun equipped

Todos:
- Make the NPCs smarter when fighting against monsters (avoiding mass infighting between them)
- Zombies
- Finish citizen Bystander AI (That is the NPCCore, every other NPC AI will rely on NPCCore due to uhh... the way models work in GZDoom)
- Dismembering (It is possible, but mind if I tell you, it will be a huge pain in the ass to work on the models..)
- More reacting states (laughing, clapping, reacting to animals, etc..)
- Finish the NPCShop (barebones, but it can stare at you in a distance!)

||Animals||

The cat will flee for forever when ""the Player"" is running, just like in Postal 2, it doesn't react to other NPCs yet; can be picked up if walking towards them
Dog will bark at any nearby cat and will chase afterwards it, it's attack is similar to Postal 2's | Bug: If their target died it will chase towards the Player

Todos:
- Add elephants, follower monkeys, flying/walking pigeons
- Finish Dog & Cat AI

||Other||

The HUD is pretty much completed, I only have a few concerns about how the heart is beating but I can't make it any better
The following inventory items are already in the mod and works the same way like in Postal 2 when you consume them or picking them up (NPC interactions are literally zero atm):
- Pizza, Fast food bag, Doughnut (They give you health, and they cannot give you more than 100 HP)
- Crack pipe, upon consuming it will give you 125 HP after the blow smoke sound is ended, after approx. 400 seconds later the Dude will start saying he doesn't feel good
EVEN the warnings are implemented! Upon "hit" the Player takes 25% of it's health
- Catnip, upon consuming it will start playing the blow smoke, and then after everything is slowed down... in reality it just stops time every few seconds, after 45 seconds the effect wears off and Dude
will be no longer the lizard king. Affects the HUD heart too!
- You can pick up cats, but silenced weapons aren't programmed yet, so it doesn't work when you try to use ENTER
- Armor shows up on the HUD and works exactly like in Postal 2

||Gameplay specific||

- When the player dies, the HUD will disappear, and everything will switch to Third person mode and you can freely look around just like in Postal 2
lacks: - Ability to scroll up or down to move the camera close or far
- Killing spree lines; Dude will say something if you keep killing any living entity (works with monster mods)
- You can put the fire on yourself out by pissing upwards
- You can holster any weapon by pressing (default E), you can also bring it back up, it will always remember it 
- You can kick by pressing (default Q), you can open ANYTHING with it except polyobjects
- You can unzip your pants by pressing (default R)
- STD tries to mimic Postal 2 movement, all Doom physics from the Player are removed
- STD tries to mimic how cheating in Postal 2 works, if you type anything in the close Dude will say something
- STD will mock you for saving too often.. =)

||Multiplayer||

in LAN it works without causing any de-sync, I don't know how it works with other players
You can bet on that if Zandronum will support ZScript Multiplayer will be completely fixed

