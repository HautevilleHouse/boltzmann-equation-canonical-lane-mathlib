import BoltzmannEquationCanonicalLaneLean.HTheorem

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure MaxwellianEquilibriumPackage {C : CollisionOperatorPackage}
    {B : BoltzmannEquationPDEPackage C} {H : HTheoremPackage B} where
  maxwellianForm : Type
  parameters : Type
  localEquilibriumCondition : Prop
  globalEquilibriumCondition : Prop

structure MaxwellianEquilibriumEvidence {C : CollisionOperatorPackage}
    {B : BoltzmannEquationPDEPackage C} {H : HTheoremPackage B}
    (M : MaxwellianEquilibriumPackage H) where
  localEquilibriumConditionClosed : M.localEquilibriumCondition
  globalEquilibriumConditionClosed : M.globalEquilibriumCondition

def MaxwellianEquilibriumClosed {C : CollisionOperatorPackage}
    {B : BoltzmannEquationPDEPackage C} {H : HTheoremPackage B}
    (M : MaxwellianEquilibriumPackage H) : Prop :=
  M.localEquilibriumCondition ∧ M.globalEquilibriumCondition

theorem maxwellian_equilibrium_closed_from_evidence
    {C : CollisionOperatorPackage} {B : BoltzmannEquationPDEPackage C}
    {H : HTheoremPackage B} (M : MaxwellianEquilibriumPackage H)
    (E : MaxwellianEquilibriumEvidence M) : MaxwellianEquilibriumClosed M := by
  exact And.intro E.localEquilibriumConditionClosed E.globalEquilibriumConditionClosed

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse