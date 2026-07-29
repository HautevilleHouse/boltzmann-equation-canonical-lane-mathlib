import BoltzmannEquationCanonicalLaneLean.HTheorem

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure HydrodynamicLimitPackage {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} {H : HTheoremPackage B C} where
  scalingLimit : Prop
  leadingOrderEquations : Prop
  correctionTerms : Prop

structure HydrodynamicLimitEvidence {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} {H : HTheoremPackage B C} (D : HydrodynamicLimitPackage) where
  scalingLimitClosed : D.scalingLimit
  leadingOrderEquationsClosed : D.leadingOrderEquations
  correctionTermsClosed : D.correctionTerms

def HydrodynamicLimitClosed {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} {H : HTheoremPackage B C} (D : HydrodynamicLimitPackage) : Prop :=
  D.scalingLimit ∧ D.leadingOrderEquations ∧ D.correctionTerms

theorem hydrodynamic_limit_closed_from_evidence {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} {H : HTheoremPackage B C} (D : HydrodynamicLimitPackage) (E : HydrodynamicLimitEvidence D) : HydrodynamicLimitClosed D := by
  exact And.intro E.scalingLimitClosed (And.intro E.leadingOrderEquationsClosed E.correctionTermsClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse