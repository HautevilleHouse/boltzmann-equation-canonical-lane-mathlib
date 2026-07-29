import Lake
open Lake

package boltzmann-equation-canonical-lane-mathlib where
  -- Package configuration

require canonical_lane_mathlib_core from git
  "https://github.com/HautevilleHouse/canonical-lane-mathlib-core"
  @ "ac2caf2b7698cd96d2cd0bf5a4cdbbe88c7f620f"

@[default_target]
lean_lib boltzmann-equation-canonical-lane-mathlib where
  roots := #[`boltzmann-equation-canonical-lane-mathlib]
