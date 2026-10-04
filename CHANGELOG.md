# Changelog

## Unreleased

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

### Fixed

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
