> :tada:{ .mirror } ***DEDICATED CONTENT*** :tada:
>
> This feature is dedicated to FokaStudio (*Developer*)

<div class="result foka-infobox-grid" markdown>
<div markdown class="foka-infobox-text">
**Frigid Harvester** is a post-Dragon greatsword which permanently increases its dealt damage after killing a mob.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Frigid Harvester can be enchanted with any Sword enchantment.

<i class="icon-minecraft icon-minecraft-anvil"></i> Frigid Harvester can be repaired with <i class="icon-minecraft icon-minecraft-diamond"></i>Diamonds.

<br><br>

[TOC]

</div>
<div class="foka-infobox-table">
  <table id="foka-infobox--item">
	<tr>
		<th colspan="2" class="foka-infobox--top-image"><img src="../../assets/items/frigid_harvester.png"></th>
	</tr>
	<tr>
		<th colspan="2" class="foka-infobox--top-image"><img src="../../assets/items/frigid_harvester_all_levels.gif"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>5</td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Very Slow (0.9)</td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>
			Imbues itself with souls of slain enemies,
			<br>
			permanently increasing its damage
			<br><br>
			<span style="color: #BA02D7;">- Developer Item -</span>
		</td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>1562</td>
	</tr>
	<tr>
		<td><b>Other</b></td>
		<td>-15% Movement Speed (while held)</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Frigid Harvester has a 10% chance to be found inside Frozen Crates fished up from [Void Fishing](../mechanics/void_fishing.md).

Additionaly, <i class="icon-minecraft icon-minecraft-mob-stray-face"></i>Strays spawning in [Frosted Hills](../biomes/frosted_hills.md) have a 3% chance to spawn holding a Frigid Harvester. Killing them will cause them to drop the weapon. Strays equipped with Harvesters have increased health, defense and damage, and wear a <i class="icon-minecraft icon-minecraft-diamond-helmet"></i>Diamond Helmet.

## Usage
Killing any living mob permanently increases Frigid Harvester's damage. The extra damage is listed in the item description.

Stronger mobs give more extra damage, while passive mobs barely give any.

Frigid Harvester goes through a few texture changes as it hits different amounts of extra damage. First being at +4, then at +8 and final one at +12.

While holding Frigid Harvester in main hand movement speed is reduced by 15%.

### Extra Damage
!!! info "Extra damage calculation formula"
	`(gain / [mod(gain, 100) * 100]) / high_level_slicer`

	<br>

	`gain` - the amount of extra damage a killed mob awards, see the table below.

	`high_level_slicer` - arbitrary values for additional damage cuts based on current extra damage stat value.

	- **1** if current extra damage is below 14.
	- **2** if current extra damage is between 14 - 15.
	- **4** if current extra damage is between 16 - 17.
	- **8** if current extra damage is between 18 - 19.
	- **16** if current extra damage is 20 or higher, though this usually doesn't happen.

| Extra Damage Amount | Mobs | Tag File |
| :--- | :--- | :--- |
| +0.04 | All passive mobs, <i class="icon-minecraft icon-minecraft-mob-bee-face"></i>Bee, <i class="icon-minecraft icon-minecraft-mob-polar-bear-face"></i>Polar Bear, <i class="icon-minecraft icon-minecraft-mob-snow-golem-face"></i>Snow Golem, <i class="icon-minecraft icon-minecraft-mob-iron-golem-face"></i>Iron Golem, <i class="icon-minecraft icon-minecraft-mob-slime-face"></i>Slime, <i class="icon-minecraft icon-minecraft-mob-magma-cube-face"></i>Magma Cube, <i class="icon-minecraft icon-minecraft-mob-cave-spider-face"></i>Cave Spider, <i class="icon-minecraft icon-minecraft-mob-guardian-face"></i>Guardian | `#fokastudio:end/frigid_harvester/gives_minor_boost` |
| +0.11 | <i class="icon-minecraft icon-minecraft-mob-zombie-face"></i>Zombie, <i class="icon-minecraft icon-minecraft-mob-skeleton-face"></i>Skeleton, <i class="icon-minecraft icon-minecraft-mob-spider-face"></i>Spider, <i class="icon-minecraft icon-minecraft-mob-enderman-face"></i>Enderman, <i class="icon-minecraft icon-minecraft-mob-husk-face"></i>Husk, <i class="icon-minecraft icon-minecraft-mob-stray-face"></i>Stray, <i class="icon-minecraft icon-minecraft-mob-pillager-face"></i>Pillager, <i class="icon-minecraft icon-minecraft-mob-drowned-face"></i>Drowned, <i class="icon-minecraft icon-minecraft-mob-zombie-villager-face"></i>Zombie Villager, <i class="icon-minecraft icon-minecraft-mob-zombified-piglin-face"></i>Zombified Piglin, <i class="icon-minecraft icon-minecraft-mob-piglin-face"></i>Piglin, <i class="icon-minecraft icon-minecraft-mob-pillager-face"></i>Pillager, <i class="icon-minecraft icon-minecraft-mob-vex-face"></i>Vex | `#fokastudio:end/frigid_harvester/gives_small_boost` |
| +0.28 | <i class="icon-minecraft icon-minecraft-mob-wither-skeleton-face"></i>Wither Skeleton, <i class="icon-minecraft icon-minecraft-mob-blaze-face"></i>Blaze, <i class="icon-minecraft icon-minecraft-mob-vindicator-face"></i>Vindicator, <i class="icon-minecraft icon-minecraft-mob-witch-face"></i>Witch, <i class="icon-minecraft icon-minecraft-mob-phantom-face"></i>Phantom, <i class="icon-minecraft icon-minecraft-mob-shulker-face"></i>Shulker, <i class="icon-minecraft icon-minecraft-mob-hoglin-face"></i>Hoglin, <i class="icon-minecraft icon-minecraft-mob-creeper-face"></i>Creeper, other players (PvP) | `#fokastudio:end/frigid_harvester/gives_big_boost` |
| +0.52 | <i class="icon-minecraft icon-minecraft-mob-evoker-face"></i>Evoker, <i class="icon-minecraft icon-minecraft-mob-illusioner-face"></i>Illusioner, <i class="icon-minecraft icon-minecraft-mob-piglin-brute-face"></i>Piglin Brute, <i class="icon-minecraft icon-minecraft-mob-ghast-face"></i>Ghast, <i class="icon-minecraft icon-minecraft-mob-zoglin-face"></i>Zoglin, <i class="icon-minecraft icon-minecraft-mob-ravager-face"></i>Ravager | `#fokastudio:end/frigid_harvester/gives_large_boost` |
| +3.4 | <i class="icon-minecraft icon-minecraft-mob-wither-face"></i>Wither, <i class="icon-minecraft icon-minecraft-mob-giant-face"></i>Giant, <i class="icon-minecraft icon-minecraft-mob-elder-guardian-face"></i>Elder Guardian, <i class="icon-minecraft icon-minecraft-mob-warden-face"></i>Warden | `#fokastudio:end/frigid_harvester/gives_huge_boost` |

## Tips
- It is relatively easy to get Frigid Harvester to +3 or +4 damage. It can be achieved in one night by just running around and killing Zombies or Skeletons.
- Getting Frigid Harvester to +12 might be difficult, as weaker mobs quickly stop giving extra damage.
    - Getting past +12 requires grinding <i class="icon-minecraft icon-minecraft-mob-wither-face"></i>Withers or <i class="icon-minecraft icon-minecraft-mob-warden-face"></i>Wardens.
- Even though Frigid Harvester starts extremely weak compared to other late-game weapons, it can outdamage them with right setup and a lot of extra damage.
- You get slowed down while holding a Frigid Harvester. This can be cancelled out by a Swiftness Potion.

## Trivia
- This is the third Developer weapon to get added into FSEE, the first being [Prismatic Punch](prismatic_punch.md), second being [Spirit Dagger](spirit_dagger.md).
- This weapon is based on Aery[^1] kit from Roblox BedWars[^2].
	- In some places in the code, Frigid Harvester is reffered to as `Aery Sword`.
- Lorewise, Frigid Harvester is said to have been made by Iceologers who settled in Frosted Hills, and is said to be made out of Enchanted Ice.
 
## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-challenge"></i><i class="icon-adv icon-fsee icon-fsee-frigid-harvester"></i></div> | Frozen Reaper | Reach +12 Extra Damage on Frigid Harvester<br><span style="color: #727272;">ᴛɪᴘ: ᴛʜɪѕ ᴍɪɢʜᴛ ʀᴇǫᴜɪʀᴇ ѕᴏᴍᴇ ɢʀɪɴᴅɪɴɢ...</span> | Remote Getaway | :x: | `fokastudio:end/exploration/max_out_aery_sword` |

## History
- **1.6a**
	- Introduced

[^1]: [Aery kit](https://robloxbedwars.fandom.com/wiki/Aery) on Roblox Bedwars Wiki
[^2]: [Roblox BedWars](https://www.roblox.com/games/6872265039/)
