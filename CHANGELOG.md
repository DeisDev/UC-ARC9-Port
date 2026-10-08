# Changelog

## Unreleased

## 1.3.4 - 2026-10-08

### Fixed

- The G3 finish is now in Personalization, like the other weapons.
- Jams now play the original malfunction sound.
- Restored the M16 FPW and Patriot trigger delay to 0.1 seconds.
- The M1014 now finishes clearing a jam at the end of its animation.
- M16 heat recovery now starts immediately when overheated, and cooling no longer clears ordinary jams.

## 1.3.3 - 2026-10-08

### Changed

- All 17 weapons now share a UC weapon base, preserving their existing balance and handling.

### Fixed

- Attachments no longer disappear when peeking through scopes such as the NVIS and TARS.

## 1.3.2 - 2026-10-07

### Fixed

- Fixed Lua errors affecting all weapons on older ARC9 builds.
- Tactical devices now attach to the M16 SD barrel's clamp instead of floating in front of the gun.
- MP5 handguard labels now show when a foregrip or tactical device automatically fits the RIS handguard.

## 1.3.1 - 2026-10-06

### Fixed

- Firing no longer makes you move faster with setups that ease the firing slowdown, such as the MP5K or the 329 in single action, and aiming with Strafe no longer does either. As in Urban Coalition, guns never move you faster than your normal speed.
- The 870 now pumps a shell into the chamber after a reload from empty, and an empty reload fills only the tube, as in Urban Coalition.
- Weapon selection and kill icons no longer show dark metal and wood as see-through, as on the 329, 870, and M1014.

## 1.3.0 - 2026-10-05

### Added

- Urban Coalition HK USP with its original assets and 10 active weapon-specific attachments.

### Changed

- The customization menu now hides parts that can't go on the gun, such as shotgun ammo on pistols, and parts the original hid while blocked, such as magazines for another caliber, as in Urban Coalition.
- The TARS and NVIS scopes now update at full frame rate instead of 45 and 42 FPS.

### Fixed

- Inspecting a gun no longer flashes back to its idle pose partway through, and the G3 and SPAS-12 no longer flicker while held in inspect.
- The G3SG/1 scope now zooms with the mouse wheel. Scrolling used to cause an error.
- Scopes no longer blur or show rainbow edges when the gun moves or fires.

## 1.2.1 - 2026-10-05

### Fixed

- Guns now climb as much as in Urban Coalition when firing. They climbed far less before, most of all in full auto, where the AK climbed about half as much.
- The M203, GP-25, and HK79 launchers now kick as hard as in Urban Coalition, and the Masterkey kicks less to the side.

## 1.2.0 - 2026-10-05

### Changed

- Attachments now load from 29 files instead of 433, so servers with many addons (such as the EFT or MW2019 packs) are less likely to hit Garry's Mod's Lua file limit, which made attachments refuse to equip.
- A gun blocked by a wall or the floor now stays aimed, blocks firing, and pulls back by how far the barrel is blocked, as in Urban Coalition. Previously it dropped out of aim, which also lowered FPS when crouching and aiming an ACOG at the ground.
- Third-person arms (TPIK) now hold every gun at their natural position instead of reaching for it.

### Fixed

- Other ARC9 weapon packs no longer show Urban Coalition muzzle flashes or a larger ARC9 muzzle glow.
- Weapon selection icons now show the whole gun; long guns were cut off and pistols were tiny.
- The Glock no longer sits too far from the hands in third person.
- Muzzle devices on the Mini-14's standard 20" barrel now replace its built-in flash hider instead of showing both.

## 1.1.1 - 2026-10-05

### Added

- Multi-rail accessories setting: when on, each tactical device can hold a second tactical device. It is off by default, as in Urban Coalition.

### Fixed

- 329 barrels no longer stay on the gun after being removed or swapped.
- The AK no longer shows an underbarrel rail when only an underbarrel launcher is fitted.
- The M16 with the heat shield handguard now shows the gun and its parts correctly in third person and in customization.
- Optics and other parts on the Mini-14, 870, and M79 no longer shift after switching between first and third person, which could misalign sights.
- Pump and bolt actions now stay in the fired pose while the trigger is held, instead of snapping back before cycling.

## 1.1.0 - 2026-10-04

### Changed

- Installing a part now removes installed parts that conflict with it, as in Urban Coalition, instead of being refused. For example, the .50 Beowulf and HK33 receivers now install over a non-default magazine.
- The flashlight key no longer collapses M16 stocks or changes tracer colors.
- Underbarrel launchers can now be selected while empty, as in Urban Coalition.
- The AK and MP5 sprint animations no longer get extra bob, and guns no longer shift up while sprinting.

### Fixed

- Pump and bolt actions now cycle right after the shot instead of waiting a full fire-rate delay.
- Pump and bolt-action fire rates now show the original values, such as about 55 RPM for the AW.
- M16 stocks no longer appear as a bare buffer tube.
- Parts that change the same model piece or attachment position now combine in the original order.
- The AK bayonet can no longer be fitted with the Type 56 barrel, and the Auto Trigger now fits the M16 FPW receiver.
- The Glock no longer shows a second tactical slot or duplicate tactical attachments.
- Hidden underbarrel launcher slots on the M16, M79, Mini-14, and AK no longer show as separate buttons.
- Hip-fire, crouching, sprinting, and near-wall gun positions now match Urban Coalition; guns sat too high, and crouching moved them too far.
- The gang-sign perk, short stocks, Doom perk, Freeman barrel, and Fear charm now move the gun to their original positions.
- The SPAS-12 safety pose now uses its own position instead of the M1014's.
- The MP5 and AK sprint animations now loop.
- Optic reticles now line up with the point of aim on guns with slightly tilted rails, such as the Mini-14, M79, 870, and AK.
- Optic eye distance now matches Urban Coalition for scopes, red dots, and iron-sight attachments.
- Fixed misaligned aiming with M16 rear sights, the 870, M1014, and SPAS-12 irons, the Micro Uzi, and the folded SPAS-12 stock.
- Fixed misaligned aiming with the PSG-1 and G3SG/1 scopes, ACOG and ELCAN backup irons, and other angled optic sights.

## 1.0.0 - 2026-10-04

### Added

- Urban Renewal 329, AW, double-barrel shotgun, Desert Eagle, and G3 with their assets and 68 active weapon-specific attachments.
- Urban Renewal MP5 with its original assets, caliber conversions, and 24 active weapon-specific attachments.
- Urban Renewal SPAS-12 with semi-auto, pump, and Freeman firing modes, original assets, and eight active weapon-specific attachments.
- Urban Renewal M1911 with its original assets and 13 active weapon-specific attachments.
- Urban Renewal AKM with its original assets and 38 active weapon-specific attachments.
- English and Spanish phrases for the ARC9 Urban Coalition port.
- Original Kobra and PSO-1 scope models and required ammo, magazine, and muzzle-effect assets.
- Original smoke and flashbang sounds bundled without an extra addon dependency.
- M16 optic and foregrip rail controls, with saved and synchronized positions.
- Matching icons for Dual-stage Trigger and Strafe.
- A bundled fire-loop sound for incendiary and napalm rounds.

### Changed

- Enabled and tuned ARC9 visual recoil for all seven weapons, including aimed fire and attachment changes.
- M79 buckshot and Hornet's Nest rounds now use the pack's shotgun and .22 LR bullet speeds.
- Aimed sway now matches Urban Coalition's strength, and guns also sway in hip fire, more while walking or airborne and less while crouching.
- The AW can no longer peek over its sights.

### Fixed

- NPCs now hold the Glock and M1911 as pistols.
- The M79 can no longer aim while reloading.
- Melee attacks no longer slow you down.
- Bullets that use up their penetration now lose all their damage, as in Urban Coalition.
- The 870, Glock, M16, Mini-14, Uzi, and AK now jam before the shot fires, as in Urban Coalition.
- The M1014 can now jam on its last shell.
- M79 buckshot and Hornet's Nest hits now use GMod's normal hit-zone damage.
- M79 grenades no longer carry the shooter's movement speed.
- The M16 LMG handguard bipod no longer cuts recoil far more than in Urban Coalition.
- Aiming no longer shrinks the gun on screen on weapons and sights that never set their own aiming view, matching Urban Coalition.
- The Glock and M1911 left hand now reaches the gun in third person when not aiming.
- 329 barrels now change the gun's model and name.
- Underbarrel launchers now animate the left hand with any M16 handguard.
- The left hand now holds vertical foregrips on the M16, 870, Uzi, and G3 with any handguard, barrel, slide, or body.
- The left hand now reaches for the magazine during AK reloads with the Alpha or Dong handguard or the Krinkov or Vityaz barrel.
- Range bonuses and penalties now also move the start of damage falloff, as in the original pack.
- The AW fixed stock no longer slows holstering.
- The 40mm Dummy round no longer halves visual recoil a second time.
- The Glock CS slide and Uzi .45 conversion show the correct default magazine name.
- Every weapon part slot now has a marker in the 3D customization view, placed on its part.
- The double-barrel choke marker moves with the barrel length.
- The Glock stock adapter now sits higher with the compact frame and 10-round magazine, as the original intended.
- The G3 ejects one shell per shot instead of two.
- M16 rear sights stay at their fixed rail position.
- Skins, covers, charms, and front sights are free only where the original pack made them free.
- With true names on, the 329, double-barrel shotgun, Desert Eagle, and G3 now list their real manufacturers.
- Added the missing spawn menu icons for the 329, AW, double-barrel shotgun, Desert Eagle, and G3.
- Removed the muzzle brake the Desert Eagle equipped on its own, including from saved loadouts.
- Fixed the MP5 Kurz support hand staying on the grip during reloads.
- Corrected the MP5 bolt staying still and shells ejecting behind the port.
- Translated custom fire-mode labels so phrase keys no longer overlap the stats row.
- Corrected the AK's displaced collision hull that made dropped weapons float and rotate off-center.
- Hidden the M1911 spare worldmodel magazine and the AK's spare magazine rounds.
- Removed the floating shotgun shell behind the M1014 worldmodel.
- Fixed the Uzi Mini and Micro aiming pose in third person; the left hand now follows the two-handed pistol stance.
- Shortened the forced-reset fire-mode label to prevent overlap with the ammo count.
- Corrected the M1911 camera turning sideways and bringing the arms across the view.
- Corrected attachment rotations, model offsets, charm placement, and optic alignment across all eight weapons.
- Restored separate handling dispersion, including M79 grenades and attachment bonuses.
- Corrected canted recoil, bipod recoil, melee timing, draw speeds, and shot-pitch modifiers.
- Corrected the Glock extended magazine's hip-fire penalty and .22 LR penetration.
- Fixed the Express-12 ring sight being hidden by the optic rail.
- Restored indoor and outdoor gunshot-tail blending, including the Uzi's quieter indoor tail.
- Hidden the Glock and Uzi spare reload magazines on dropped and held worldmodels.
- On the Move now reduces movement penalties without removing the weapon's base spread.
- Armor-piercing rounds apply their object damage bonus only to the matching bullet hit.
- Underbarrel launchers mounted on the M79 retain their intended grenade damage.
- Dragon's Breath impact embers now render with ARC9 physical bullets.
- Rapid custom-color changes retain the final selection in multiplayer.
- Prevented particle emitter leaks and errors when effects or delayed napalm callbacks lose their resources.
- Corrected Glock iron-sight alignment, including the Custom and NyteSyte slides.
- Free aim remains visible when weapon sway is disabled, keeping the gun aligned with its shot direction.
- Shell casings now eject from the first-person weapon when third-person IK is enabled.
- Dropped weapons render at their pickup position with their selected parts.
- Glock and Uzi third-person hand IK now follows their two-handed poses while preserving one-handed perks.
- Inspect labels now show translated text instead of phrase keys on all seven weapons.
- M16 conversion capacities and semi-auto and burst trigger behavior.
- Reload and firing animations with combined magazine, receiver, stock, and underbarrel attachments.
- Underbarrel spread, projectile counts, ammo settings, muzzle effects, and damage handling.
- Missing confetti particles, low-ammo warnings, Dragon's Breath reports, and underwater firing sounds.
- Custom weapon colors now reach players joining multiplayer games later.
- Removing attachments restores the original weapon parts, including the Glock SD slide.
- Level resting cameras for all seven weapons and underbarrel animation models.
- Safety and sprint poses now use the correct axes; the Glock lowers when made safe.
- M16 receiver, heat, sound, and sight behavior.
- Missing Glock handling sounds and the Micro Uzi empty malfunction animation.
- Kobra reticle size and NVIS white-hot, black-hot, and normal imaging modes.
- TARS zoom adjustment no longer raises a Lua error.
- Switching to an empty underbarrel weapon with UC infinite ammo enabled.
- One-handed reload poses, attachment-dependent slot labels, malfunction timing, and stock toggle sounds.
- Grenade fuse detonation and the 40mm DP penetration effect.
