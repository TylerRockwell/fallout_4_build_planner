# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

### SPECIAL STATS ###
SpecialStatType.create!(name: "Strength", description: "Your raw physical power. It affects how much you can carry and the damage of all melee attacks.")
SpecialStatType.create!(name: "Perception", description: "Your environmental and situational awareness. It directly affects weapon accuracy in V.A.T.S. (Vault-Tec Assisted Targeting System), lock-picking skills, and successful attempts at stealing items.")
SpecialStatType.create!(name: "Endurance", description: "Your overall physical fitness. It affects your total Health and the Action Point drain from sprinting.")
SpecialStatType.create!(name: "Charisma", description: "Your ability to charm and convince others. It affects your success to persuade in dialogue, prices when you barter, and the maximum number of settlers in settlements.")
SpecialStatType.create!(name: "Intelligence", description: "Your overall mental acuity. It affects the number of Experience Points earned.")
SpecialStatType.create!(name: "Agility", description: "Your overall finesse and reflexes. It affects the number of Action Points in V.A.T.S. and your ability to sneak.")
SpecialStatType.create!(name: "Luck", description: "Your general good fortune and affects the recharge rate of critical hits.")

### Perks ###

# Strength Perks
# PerkType.create!(name: "Strength", description: "Working out has paid off. You are stronger than ever. Increase Strength by 1.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 1)
PerkType.create!(name: "Iron Fist", description: "Channel your chi to unleash devastating fury! If you're the pugilistic sort and favor unarmed weaponry to inflict pain and suffering to an ever-more impressive degree, this is the perk for you! Let's not dwell on the slight shortfall of the difficulty in fighting multiple opponents at once; this focuses all of your muscle on one hapless fool.",
    total_ranks: 5, special_level: 1, special_stat_type_id: 1)
PerkType.create!(name: "Big Leagues", description: "Swing for the fences! If you design a bludgeoning or bladed method of bringing an end to your foes, this is the perk to take. Though difficult to battle against multiple enemies in the same space, close combat is much more impressive when your damage is increased.",
    total_ranks: 5, special_level: 2, special_stat_type_id: 1)
PerkType.create!(name: "Armorer", description: "Protect yourself from the dangers of the wasteland. If you're the sort to tinker at an armor workbench and want to craft some impressively protective gear for yourself of your companions, choose this perk.",
    total_ranks: 4, special_level: 3, special_stat_type_id: 1)
PerkType.create!(name: "Blacksmith", description: "Fire up the forge! If you enjoy swinging a melee weapon into the skulls of your adversaries, it pays to craft modified variants at a weapons workbench.",
    total_ranks: 3, special_level: 4, special_stat_type_id: 1)
PerkType.create!(name: "Heavy Gunner", description: "Thanks to practice and conditioning, you're able to utilize the weightiest of weapons with an extra degree of precision.",
    total_ranks: 5, special_level: 5, special_stat_type_id: 1)
PerkType.create!(name: "Strong Back", description: "What are you? Part pack mule? Though those favouring heavier weapons and armor are likely to take this perk on general principle, it's also hugely beneficial to scavengers; spend more time in the wilderness gathering loot to sell or trade or carry a greater complement of killing equipment.",
    total_ranks: 4, special_level: 6, special_stat_type_id: 1)
PerkType.create!(name: "Steady Aim", description: "Stay on target! If you enjoy the benefits of gun-play without entering V.A.T.S to accomplish your violent goal, then increase the accuracy of any projectile weapon with this perk. This allows you a little more leeway when manually firing at foes, and also without aiming down iron-sights or scopes.",
    total_ranks: 2, special_level: 7, special_stat_type_id: 1)
PerkType.create!(name: "Basher", description: "Get up close and personal! The amount of time you use the butt of your gun to inflict a bloody nose (or worse) at close quarters reflects how important you deem this perk to be. But it does increase the flexibility of more complex combat situations where you may not wish to switch between a favored firearm and a different weapons type.",
    total_ranks: 4, special_level: 8, special_stat_type_id: 1)
PerkType.create!(name: "Rooted", description: "You're part tree! Though ostensibly used when you're standing there trading close quarter blows with a hapless idiot, this can also be used when you're sneaking behind a foe, stopping, and delivering a killing blow.",
    total_ranks: 3, special_level: 9, special_stat_type_id: 1)
PerkType.create!(name: "Pain Train", description: "Choo-Choo! All Aboard! Turning Power Armor into an offensive weapon! What an exceptional idea! As long as you have the Action points to complete a sprint before switching to your favorite weapon and you're focusing on Power Armor as a main source of protection, this can prove an excellent deterrent at any time during combat.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 1)

# Perception Perks
# PerkType.create!(name: "Perception", description: "Some may call it paranoia, but you call it paying attention. Increase Perception by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 2)
PerkType.create!(name: "Pickpocket", description: "Your quick hands and sticky fingers make picking pockets 25% easier.",
    total_ranks: 4, special_level: 1, special_stat_type_id: 2)
PerkType.create!(name: "Rifleman", description: "Keep your distance long and your kill-count high. Attacks with non-automatic rifles do 20% more damage.",
    total_ranks: 5, special_level: 2, special_stat_type_id: 2)
PerkType.create!(name: "Awareness", description: "To defeat your enemies, know their weaknesses! You can view a target's specific damage resistances in V.A.T.S.",
    total_ranks: 1, special_level: 3, special_stat_type_id: 2)
PerkType.create!(name: "Locksmith", description: "Your nimble fingers allow you to pick advanced locks.",
    total_ranks: 4, special_level: 4, special_stat_type_id: 2)
PerkType.create!(name: "Demolition Expert", description: "The bigger the boom, the better! Your explosives do 25% more damage, and you can craft explosives at any Chemistry Station.",
    total_ranks: 4, special_level: 5, special_stat_type_id: 2)
PerkType.create!(name: "Night Person", description: "You are a creature of the night! Gain +2 to Intelligence and Perception between the hours of 6:00 p.m. and 6:00 a.m.",
    total_ranks: 2, special_level: 6, special_stat_type_id: 2)
PerkType.create!(name: "Refractor", description: "You must be part mirror! Instantly gain +10 Energy Resistance.",
    total_ranks: 5, special_level: 7, special_stat_type_id: 2)
PerkType.create!(name: "Sniper", description: "It's all about focus. You have improved control and can hold your breath longer when aiming with scopes.",
    total_ranks: 3, special_level: 8, special_stat_type_id: 2)
PerkType.create!(name: "Penetrator", description: "There's no place to hide! In V.A.T.S you can target an enemy's body parts that are blocked by cover, with a decrease in accuracy.",
    total_ranks: 2, special_level: 9, special_stat_type_id: 2)
PerkType.create!(name: "Concentrated Fire", description: "Stay Focused! In V.A.T.S every attack on the same body part gains +10% accuracy.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 2)

# Endurance Perks
# PerkType.create!(name: "Endurance", description: "You don't let little things like nuclear fallout keep you down. Increase Endurance by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 3)
PerkType.create!(name: "Toughness", description: "If nothing else, you can take a beating! Instantly gain +10 Damage Resistance.",
    total_ranks: 5, special_level: 1, special_stat_type_id: 3)
PerkType.create!(name: "Lead Belly", description: "Your digestive tract has adjusted to the weirdness of the Wasteland! Take less radiation from eating or drinking.",
    total_ranks: 3, special_level: 2, special_stat_type_id: 3)
PerkType.create!(name: "Lifegiver", description: "You embody wellness! Instantly gain +20 maximum Health",
    total_ranks: 3, special_level: 3, special_stat_type_id: 3)
PerkType.create!(name: "Chem Resistant", description: "All the rush without the hassle! You're 50% less likely to get addicted when consuming Chems.",
    total_ranks: 2, special_level: 4, special_stat_type_id: 3)
PerkType.create!(name: "Aqua Boy", description: "Water is your ally. You no longer take radiation damage from swimming, and can breathe underwater.",
    total_ranks: 2, special_level: 5, special_stat_type_id: 3)
PerkType.create!(name: "Rad Resistant", description: "Exposure to the Wasteland has made you more resilient, instantly granting +10 Radiation Resistance.",
    total_ranks: 3, special_level: 6, special_stat_type_id: 3)
PerkType.create!(name: "Adamantium Skeleton", description: "Your skeleton has been infused with indestructible metal, reducing limb damage by 30%.",
    total_ranks: 3, special_level: 7, special_stat_type_id: 3)
PerkType.create!(name: "Cannibal", description: "Feast on mortal flesh to heal your wounds! Eating human corpses restores Health.",
    total_ranks: 3, special_level: 8, special_stat_type_id: 3)
PerkType.create!(name: "Ghoulish", description: "Sure, you're still human - on the outside! Radiation now regenerates your lost Health.",
    total_ranks: 3, special_level: 9, special_stat_type_id: 3)
PerkType.create!(name: "Solar Powered", description: "Catch some rays! Gain +2 to Strength and Endurance between the hours of 6:00a.m. and 6:00p.m.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 3)

# Charisma Perks
# PerkType.create!(name: "Charisma", description: "It's not lying unless you get caught! Increase Charisma by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 4)
PerkType.create!(name: "Cap Collector", description: "You've mastered the art of the deal! Buying and selling prices at vendors are better.",
    total_ranks: 3, special_level: 1, special_stat_type_id: 4)
PerkType.create!(name: "Lady Killer", description: "You're charming... and dangerous. Men/Women suffer +5% damage in combat, and are easier to persuade in dialogue.",
    total_ranks: 3, special_level: 2, special_stat_type_id: 4)
PerkType.create!(name: "Lone Wanderer", description: "Who needs friends, anyway? When adventuring without a companion, you take 15% less damage and carry weight increases by 50.",
    total_ranks: 3, special_level: 3, special_stat_type_id: 4)
PerkType.create!(name: "Attack Dog", description: "Your faithful canine companion can hold an enemy, giving you a greater chance to hit them in V.A.T.S.",
    total_ranks: 3, special_level: 4, special_stat_type_id: 4)
PerkType.create!(name: "Animal Friend", description: "Commune with beasts! With your gun, aim at any animal below your level and gain a chance to pacify it.",
    total_ranks: 3, special_level: 5, special_stat_type_id: 4)
PerkType.create!(name: "Local Leader", description: "As the ruler everyone turns to, you are able to establish supply lines between your workshop settlements.",
    total_ranks: 2, special_level: 6, special_stat_type_id: 4)
PerkType.create!(name: "Party Boy", description: "Nobody has a good time like you! There's no chance you'll get addicted to alcohol.",
    total_ranks: 3, special_level: 7, special_stat_type_id: 4)
PerkType.create!(name: "Inspirational", description: "Because you lead by example, your companion does more damage in combat, and cannot hurt you.",
    total_ranks: 3, special_level: 8, special_stat_type_id: 4)
PerkType.create!(name: "Wasteland Whisperer", description: "Master the post-apocalypse! With your gun, aim at any Wasteland creature below your level and gain a chance to pacify it.",
    total_ranks: 3, special_level: 9, special_stat_type_id: 4)
PerkType.create!(name: "Intimidation", description: "Time to show everyone who's boss! With your gun, aim at any human opponent below your level and gain a chance to pacify them.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 4)

# Intelligence Perks
# PerkType.create!(name: "Intelligence", description: "To survive in the Wasteland, you must be smarter than the next guy. Increase Intelligence by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 5)
PerkType.create!(name: "V.A.N.S.", description: "Let Vault-Tec guide you! The path to your closest quest target is displayed in V.A.T.S.",
    total_ranks: 1, special_level: 1, special_stat_type_id: 5)
PerkType.create!(name: "Medic", description: "Is there a doctor in the house? Stimpaks restore 40% of lost Health, and RadAway removes 40% of radiation.",
    total_ranks: 4, special_level: 2, special_stat_type_id: 5)
PerkType.create!(name: "Gun Nut", description: "You gain access to base level and Rank 1 gun mods.",
    total_ranks: 4, special_level: 3, special_stat_type_id: 5)
PerkType.create!(name: "Hacker", description: "Knowledge of cutting-edge computer encryption allows you to hack Advanced terminals.",
    total_ranks: 4, special_level: 4, special_stat_type_id: 5)
PerkType.create!(name: "Scrapper", description: "Waste not, want not! You can salvage uncommon components like screws, aluminum, and copper when scrapping weapons and armor.",
    total_ranks: 2, special_level: 5, special_stat_type_id: 5)
PerkType.create!(name: "Science!", description: "Take full advantage of advanced technology with access to base level and Rank 1 high-tech mods.",
    total_ranks: 4, special_level: 6, special_stat_type_id: 5)
PerkType.create!(name: "Chemist", description: "Any chems you take last 50% longer. Far out.",
    total_ranks: 4, special_level: 7, special_stat_type_id: 5)
PerkType.create!(name: "Robotics Expert", description: "Machines will always serve humans, if you have anything to say about it. Hack a robot, and gain a chance to power it on or off, or initiate a self-destruct.",
    total_ranks: 3, special_level: 8, special_stat_type_id: 5)
PerkType.create!(name: "Nuclear Physicist", description: "You've learned to split the atom... and command it. Radiation weapons do 50% more damage and Fusion Cores last an extra 25% longer.",
    total_ranks: 3, special_level: 9, special_stat_type_id: 5)
PerkType.create!(name: "Nerd Rage!", description: "Genius. Is. ANGRY! When your Health drops below 20%, time slows and you gain +20 Damage resistance and do 20% more damage while the effect lasts.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 5)

# Agility Perks
# PerkType.create!(name: "Agility", description: "You've been practicing your sweet moves. Increase Agility by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 6)
PerkType.create!(name: "Gunslinger", description: "Channel the spirit of the old west! Non-automatic pistols do 20% more damage.",
    total_ranks: 5, special_level: 1, special_stat_type_id: 6)
PerkType.create!(name: "Commando", description: "Rigorous combat training means automatic weapons do 20% more damage.",
    total_ranks: 5, special_level: 2, special_stat_type_id: 6)
PerkType.create!(name: "Sneak", description: "Become whisper, become shadow. You are 20% harder to detect while sneaking.",
    total_ranks: 5, special_level: 3, special_stat_type_id: 6)
PerkType.create!(name: "Mister Sandman", description: "As an agent of death, you can instantly kill a sleeping person. Your silenced weapons do an additional 15% sneak attack damage.",
    total_ranks: 3, special_level: 4, special_stat_type_id: 6)
PerkType.create!(name: "Action Boy", description: "There's no time to waste! Action Points regenerate 25% faster.",
    total_ranks: 2, special_level: 5, special_stat_type_id: 6)
PerkType.create!(name: "Moving Target", description: "They can't hurt what they can't hit! Get 25+ Damage Resistance and 25+ Energy Resistance when you're sprinting.",
    total_ranks: 3, special_level: 6, special_stat_type_id: 6)
PerkType.create!(name: "Ninja", description: "Trained as a shadow warrior, your ranged sneak attack do 2.5x normal damage and your melee attacks do 4x normal damage.",
    total_ranks: 3, special_level: 7, special_stat_type_id: 6)
PerkType.create!(name: "Quick Hands", description: "In combat, there's no time to hesitate. You can reload all guns faster.",
    total_ranks: 2, special_level: 8, special_stat_type_id: 6)
PerkType.create!(name: "Blitz", description: "Find the gap and make the tackle! V.A.T.S. melee distance is increased significantly.",
    total_ranks: 2, special_level: 9, special_stat_type_id: 6)
PerkType.create!(name: "Gun Fu", description: "You've learned to apply ancient martial arts to gunplay! Do 25% more damage to your second V.A.T.S. target and beyond.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 6)

# Luck Perks
# PerkType.create!(name: "Luck", description: "Things just seem to always work out for you. Increase Luck by 1 point.",
#     total_ranks: 9, special_level: 1, special_stat_type_id: 7)
PerkType.create!(name: "Fortune Finder", description: "You find more bottle caps in containers.",
    total_ranks: 4, special_level: 1, special_stat_type_id: 7)
PerkType.create!(name: "Scrounger", description: "You find more ammunition in containers.",
    total_ranks: 4, special_level: 2, special_stat_type_id: 7)
PerkType.create!(name: "Bloody Mess!", description: "+5% bonus damage means enemies will sometimes explode into a gory red paste. Watch out for flying eyeballs!",
    total_ranks: 4, special_level: 3, special_stat_type_id: 7)
PerkType.create!(name: "Mysterious Stranger", description: "Who is he? Why does he help? Who cares! The Mysterious Stranger will appear occasionally in V.A.T.S. to lend a hand, with deadly efficiency...",
    total_ranks: 3, special_level: 4, special_stat_type_id: 7)
PerkType.create!(name: "Idiot Savant", description: "You're not stupid! Just... different. Randomly receive 3x XP from any action, and the lower your Intelligence, the greater the chance.",
    total_ranks: 3, special_level: 5, special_stat_type_id: 7)
PerkType.create!(name: "Better Criticals", description: "Advanced training for enhanced combat effectiveness! Criticals do 50% more extra damage.",
    total_ranks: 3, special_level: 6, special_stat_type_id: 7)
PerkType.create!(name: "Critical Banker", description: "You're a patient battlefield tactician, and can save a Critical Hit, to be used in V.A.T.S. when you need it most.",
    total_ranks: 3, special_level: 7, special_stat_type_id: 7)
PerkType.create!(name: "Grim Reaper's Sprint", description: "Death becomes you! Any kill in V.A.T.S. has a 15% chance to restore all Action Points.",
    total_ranks: 3, special_level: 8, special_stat_type_id: 7)
PerkType.create!(name: "Four Leaf Clover", description: "Feeling Lucky? You should! Each hit in V.A.T.S. has a chance of filling your Critical meter.",
    total_ranks: 4, special_level: 9, special_stat_type_id: 7)
PerkType.create!(name: "Ricochet", description: "What goes around comes around! Any enemy's ranged attacks will sometimes ricochet back and instantly kill them. The closer you are to death, the higher the chance.",
    total_ranks: 3, special_level: 10, special_stat_type_id: 7)
