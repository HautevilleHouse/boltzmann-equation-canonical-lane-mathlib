import BoltzmannEquationCanonicalLaneLean.CollisionOperator

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure HTheoremPackage {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} where
  entropyFunctionalDefined : Prop
  monotonicity : Prop
  equilibriumCharacterization : Prop

structure HTheoremEvidence {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} (H : HTheoremPackage) where
  entropyFunctionalDefinedClosed : H.entropyFunctionalDefined
  monotonicityClosed : H.monotonicity
  equilibriumCharacterizationClosed : H.equilibriumCharacterization

def HTheoremClosed {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} (H : HTheoremPackage) : Prop :=
  H.entropyFunctionalDefined ∧ H.monotonicity ∧ H.equilibriumCharacterization

theorem h_theorem_closed_from_evidence {B : BoltzmannEquationPackage} {C : CollisionOperatorPackage B} (H : HTheoremPackage) (E : HTheoremEvidence H) : HTheoremClosed H := by
  exact And.intro E.entropyFunctionalDefinedClosed (And.intro E.monotonicityClosed E.equilibriumCharacterizationClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse