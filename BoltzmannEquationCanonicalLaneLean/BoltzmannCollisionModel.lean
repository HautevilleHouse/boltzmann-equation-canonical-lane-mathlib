import BoltzmannEquationCanonicalLaneLean.BoltzmannAdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannCollisionModel where
  kernelType : Type u
  collisionOperator : Type v
  gainTerm : Prop
  lossTerm : Prop
  detailedBalance : Prop
  angularCutoff : Prop

structure BoltzmannCollisionEvidence (M : BoltzmannCollisionModel) where
  gainTermClosed : M.gainTerm
  lossTermClosed : M.lossTerm
  detailedBalanceClosed : M.detailedBalance
  angularCutoffClosed : M.angularCutoff

def BoltzmannCollisionClosed (M : BoltzmannCollisionModel) : Prop :=
  M.gainTerm ∧ M.lossTerm ∧
  M.detailedBalance ∧ M.angularCutoff

theorem boltzmann_collision_closed_from_evidence
    (M : BoltzmannCollisionModel) (E : BoltzmannCollisionEvidence M) :
    BoltzmannCollisionClosed M := by
  exact And.intro E.gainTermClosed
    (And.intro E.lossTermClosed
      (And.intro E.detailedBalanceClosed E.angularCutoffClosed))

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse