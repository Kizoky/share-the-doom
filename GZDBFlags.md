# GZDoom Builder flags for mappers
# Note: not many of them are implemented yet.

# NPCCore (Bystanders, Cops, Shop Owners)

- user_attacksplayeronsight: self-explanatory, Attacks player on sight, ignores other NPCs, but will retaliate back if damaged
- user_weapon: sets the weapon for NPC, note that it is case-sensitive (for example, if you want a shotgun it should be "Shotgun" and not "shotgun"), and it only works for Hostile NPCs

- user_postal: NPC will attack anyone in sight
- user_follow: NPC will follow the Player
- user_hostility: Enforce Hostility/Aggressiveness on the NPC, "Pussy" or "Hostile"
- user_willbezombie: If the NPC sees the player, it will turn into a Zombie
- user_zombiemaniac: Will ignore Zombies
- user_ignoreplayeractions: Will ignore whatever the Player is doing, shooting at it, or bumping into it with a weapon
- user_animalhater: Will attack any animal on sight
- user_hatesXYZgroup: Will attack this particular hate group on sight
- user_ignoredoommonsters: Will ignore Doom monsters
- user_ignoresvisibleweapon: Will ignore anyone with a weapon visible, but will retaliate if it took damage 

- user_shop_money: How much money will it cost for whatever item they are selling
- user_shop_item: What item the NPC is selling
- user_shop_hatesplayer: If set, it won't sell anything for the player
- user_shop_greedy: If set, on each purchase, the user_shop_money will gradually increase
- user_shop_stock: How many/much items the NPC shopkeeper has, if it's zero user_shop_noselling will be set automatically. If not set the NPC will have infinite amount of stock

- user_shop_noselling: If set, approaching the NPC will make you disappointed, as it won't have anything on sale.
- user_shop_hatesnpc: If set, it won't sell anything for NPCs.
- user_shop_hatescops: If set, it won't sell anything for cops.
- user_shop_breaktime: If set, upon entering the level it's in, after that amount it will disappear if it's out of sight from the Player(s). (tics, 35 tics = 1 second)

- user_shop_patient: If true, the shopkeeper will ignore the Player's actions, like making it wait long, or going far away. If false, after user_shop_patiencetimes the user_shop_hatesplayer will be set.
user_shop_patiencetimes: Only works with user_shop_patient; Defines the amount of times before the shopkeeper gets enough with the Player's shit

- user_shop_ignoreplayertaunt: If set, it will ignore Player's "Fuck you" or "Get the fuck down" and instead laughs. The opposite will make the shopkeeper shriek or attack the Player.
