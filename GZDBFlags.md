# GZDoom Builder flags for mappers
# Note: not many of them are implemented yet.

# NPCCore (Bystanders, Cops, Shop Owners, Specials)

- user_attacksplayeronsight: self-explanatory, Attacks player on sight, ignores other NPCs, but will retaliate back if damaged
- user_weapon: sets the weapon for NPC, note that it is case-sensitive (for example, if you want a shotgun it should be "Shotgun" and not "shotgun"), and it only works for Hostile NPCs
- user_postal: NPC will attack anyone in sight (default: false)
- user_follow: NPC will follow the Player (default: false)
- user_hostility: Enforce Hostility/Aggressiveness on the NPC, "Pussy" or "Hostile" (default: randomized)
- user_willbezombie: If the NPC sees the player, it will turn into a Zombie (default: false)
- user_zombiemaniac: Will ignore Zombies (default: false)
- user_ignoreplayeractions: Will ignore whatever the Player is doing, shooting at it, or bumping into it with a weapon (default: false)
- user_animalhater: Will attack any animal on sight (default: false)
- user_hatesXYZgroup: Will attack this particular hate group on sight (default string: 'none')
- user_ignoredoommonsters: Will ignore Doom monsters (default: false)
- user_ignoresvisibleweapon: Will ignore anyone with a weapon visible, but will retaliate if it took damage (default: false)
- user_standstill: Will stand still and look for possible threats/targets depending on Hostility. (default: false)

- user_shop_money: How much money will it cost for whatever item they are selling (default int: 15)
- user_shop_item: What item the NPC is selling (default string: 'Postalpizzainv')
- user_shop_hatesplayer: If set, it won't sell anything for the player (default: false)
- user_shop_greedy: If set, on each purchase, the user_shop_money will gradually increase (default: false)
- user_shop_stock: How many/much items the NPC shopkeeper has, if it's zero user_shop_noselling will be set automatically. If not set the NPC will have infinite amount of stock (default int: 100)
- user_shop_noselling: If set, approaching the NPC will make you disappointed, as it won't have anything on sale. (default: false)
- user_shop_hatesnpc: If set, it won't sell anything for NPCs. (default: false)
- user_shop_hatescops: If set, it won't sell anything for cops. (default: false)
- user_shop_breaktime: If set, upon entering the level it's in, after that amount it will disappear if it's out of sight from the Player(s). (tics, 35 tics = 1 second) (default int: null)
- user_shop_patient: If true, the shopkeeper will ignore the Player's actions, like making it wait long, or going far away. If false, after user_shop_patiencetimes the user_shop_hatesplayer will be set. (default: true)
user_shop_patiencetimes: Only works with user_shop_patient; Defines the amount of times before the shopkeeper gets enough with the Player's shit (default int: 4)
- user_shop_ignoreplayertaunt: If set, it will ignore Player's "Fuck you" or "Get the fuck down" and instead laughs. The opposite will make the shopkeeper shriek or attack the Player. (default: false)

# Doors

- user_locked: Door is locked, and won't budge. (default: false)
- user_destroyable: Door is destroyable with a Sledgehammer, or with rockets. (default: true)
- user_openonce: Door is only opened once, and won't close after. (default: false)
- user_onlyNPC: Door can be only opened by NPCs. (default: false)
- user_onlyPlayer: Door can be only opened by the Player. (default: false)
- user_lockAfter: Door is locked after open/close amount specified. (default int: 0)
- user_openAfter: Door is unlocked after the amount specified. For example, "35x10=350", adding 350 would make the Door unlocked after 10 seconds. (default int: 0)
- user_noNPCdamage: Door cannot be destroyed by NPCs. (default: false)
- user_ignoreDoomDamage: Door cannot be destroyed by non-Postal monsters/actors. (default: false)
- user_key: Door can only be opened with this key. (default string: none)
Possible keys with Skulls and Keycards: 'blueS';'blueK';'redS';'redK';'yellowS';'yellowK'
STD will probably have Postalified Doom keys, those will work too.

# Dogs

- user_friendly: If set, Dog will follow the Player and act like a guard. (default: false)
- user_ignorecats: If set, Dog will ignore cats. (default: false)
- user_ignoreplayer: If set, Dog will ignore the Player. (default: false)
- user_ignoreNPC: If set, Dog will ignore NPCs. (default: false)
- user_ignoreDoom: If set, Dog will ignore non-Postal entities. (default: false)
- user_ignorefetch: If set, Dog will ignore fetching. (default: false)

# Cats

- user_ignoreplayer: If set, Cat won't be disturbed by the Player's footsteps. (default: false)
- user_ignoredog: If set, Cat will ignore Dogs. (default: false)
- user_unpickable: If set, Cat can't be picked up. (default: false)
- user_ignorecatnip: If set, Cat won't care about Catnips laying on the ground after the Player tossed/used it. (default: false)


