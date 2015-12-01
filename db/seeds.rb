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
PerkType.create!(name: "Strength", description: "Working out has paid off. You are stronger than ever. Increase Strength by 1.",
    total_ranks: 9, special_level: 1, special_stat_id: 1)
PerkType.create!(name: "Iron Fist", description: "Channel your chi to unleash devastating fury! If you're the pugilistic sort and favor unarmed weaponry to inflict pain and suffering to an ever-more impressive degree, this is the perk for you! Let's not dwell on the slight shortfall of the difficulty in fighting multiple opponents at once; this focuses all of your muscle on one hapless fool.",
    total_ranks: 5, special_level: 1, special_stat_id: 1)
PerkType.create!(name: "Big Leagues", description: "Swing for the fences! If you design a bludgeoning or bladed method of bringing an end to your foes, this is the perk to take. Though difficult to battle against multiple enemies in the same space, close combat is much more impressive when your damage is increased.",
    total_ranks: 5, special_level: 2, special_stat_id: 1)
PerkType.create!(name: "Armorer", description: "Protect yourself from the dangers of the wasteland. If you're the sort to tinker at an armor workbench and want to craft some impressively protective gear for yourself of your companions, choose this perk.",
    total_ranks: 4, special_level: 3, special_stat_id: 1)
PerkType.create!(name: "Blacksmith", description: "Fire up the forge! If you enjoy swinging a melee weapon into the skulls of your adversaries, it pays to craft modified variants at a weapons workbench.",
    total_ranks: 3, special_level: 4, special_stat_id: 1)
PerkType.create!(name: "Heavy Gunner", description: "Thanks to practice and conditioning, you're able to utilize the weightiest of weapons with an extra degree of precision.",
    total_ranks: 5, special_level: 5, special_stat_id: 1)
PerkType.create!(name: "Strong Back", description: "What are you? Part pack mule? Though those favouring heavier weapons and armor are likely to take this perk on general principle, it's also hugely beneficial to scavengers; spend more time in the wilderness gathering loot to sell or trade or carry a greater complement of killing equipment.",
    total_ranks: 4, special_level: 6, special_stat_id: 1)
PerkType.create!(name: "Steady Aim", description: "Stay on target! If you enjoy the benefits of gun-play without entering V.A.T.S to accomplish your violent goal, then increase the accuracy of any projectile weapon with this perk. This allows you a little more leeway when manually firing at foes, and also without aiming down iron-sights or scopes.",
    total_ranks: 2, special_level: 7, special_stat_id: 1)
PerkType.create!(name: "Basher", description: "Get up close and personal! The amount of time you use the butt of your gun to inflict a bloody nose (or worse) at close quarters reflects how important you deem this perk to be. But it does increase the flexibility of more complex combat situations where you may not wish to switch between a favored firearm and a different weapons type.",
    total_ranks: 4, special_level: 8, special_stat_id: 1)
PerkType.create!(name: "Rooted", description: "You're part tree! Though ostensibly used when you're standing there trading close quarter blows with a hapless idiot, this can also be used when you're sneaking behind a foe, stopping, and delivering a killing blow.",
    total_ranks: 3, special_level: 9, special_stat_id: 1)
PerkType.create!(name: "Pain Train", description: "Choo-Choo! All Aboard! Turning Power Armor into an offensive weapon! What an exceptional idea! As long as you have the Action points to complete a sprint before switching to your favorite weapon and you're focusing on Power Armor as a main source of protection, this can prove an excellent deterrent at any time during combat.",
    total_ranks: 3, special_level: 10, special_stat_id: 1)

# Perception Perks
PerkType.create!(name: "Perception", description: "Some may call it paranoia, but you call it paying attention. Increase Perception by 1 point.",
    total_ranks: 9, special_level: 1, special_stat_id: 2)
PerkType.create!(name: "Pickpocket", description: "Your quick hands and sticky fingers make picking pockets 25% easier.",
    total_ranks: 4, special_level: 1, special_stat_id: 2)
PerkType.create!(name: "Rifleman", description: "Keep your distance long and your kill-count high. Attacks with non-automatic rifles do 20% more damage",
    total_ranks: 5, special_level: 2, special_stat_id: 2)
PerkType.create!(name: "Awareness", description: "To defeat your enemies, know their weaknesses! You can view a target's specific damage resistances in V.A.T.S.",
    total_ranks: 1, special_level: 3, special_stat_id: 2)
PerkType.create!(name: "Locksmith", description: "Your nimble fingers allow you to pick advanced locks.",
    total_ranks: 4, special_level: 4, special_stat_id: 2)
PerkType.create!(name: "Demolition Expert", description: "The bigger the boom, the better! Your explosives do 25% more damage, and you can craft explosives at any Chemistry Station.",
    total_ranks: 4, special_level: 5, special_stat_id: 2)
PerkType.create!(name: "Night Person", description: "You are a creature of the night! Gain +2 to Intelligence and Perception between the hours of 6:00 p.m. and 6:00 a.m.",
    total_ranks: 2, special_level: 6, special_stat_id: 2)
PerkType.create!(name: "Refractor", description: "You must be part mirror! Instantly gain +10 Energy Resistance.",
    total_ranks: 5, special_level: 7, special_stat_id: 2)
PerkType.create!(name: "Sniper", description: "It's all about focus. You have improved control and can hold your breath longer when aiming with scopes.",
    total_ranks: 3, special_level: 8, special_stat_id: 2)
PerkType.create!(name: "Penetrator", description: "There's no place to hide! In V.A.T.S you can target an enemy's body parts that are blocked by cover, with a decrease in accuracy.",
    total_ranks: 2, special_level: 9, special_stat_id: 2)
PerkType.create!(name: "Concentrated Fire", description: "Stay Focused! In V.A.T.S every attack on the same body part gains +10% accuracy.",
    total_ranks: 3, special_level: 10, special_stat_id: 2)
