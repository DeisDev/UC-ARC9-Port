# Changelog

## Unreleased

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
