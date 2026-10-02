# Changelog

## Unreleased

### Added

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
