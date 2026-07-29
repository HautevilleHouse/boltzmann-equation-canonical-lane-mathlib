import BoltzmannEquationCanonicalLaneLean.BoltzmannMathlibObjects

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannCollisionControlledPackage where
  collisionCrossSection : Type u
  collisionKernel : Type v
  angularCutoff : Prop
  grazingCollisionBound : Prop
  entropyProduction : Prop

structure BoltzmannCollisionEvidence (C : BoltzmannCollisionControlledPackage) where
  angularCutoffClosed : C.angularCutoff
  grazingCollisionBoundClosed : C.grazingCollisionBound
  entropyProductionClosed : C.entropyProduction

def BoltzmannCollisionControlledClosed (C : BoltzmannCollisionControlledPackage) : Prop :=
  C.angularCutoff ∧ C.grazingCollisionBound ∧ C.entropyProduction

theorem boltzmann_collision_controlled_closed_from_evidence (C : BoltzmannCollisionControlledPackage) (E : BoltzmannCollisionEvidence C) :
    BoltzmannCollisionControlledClosed C := by
  exact And.intro E.angularCutoffClosed (And.intro E.grazingCollisionBoundClosed E.entropyProductionClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse
