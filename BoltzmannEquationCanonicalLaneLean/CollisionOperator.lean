import BoltzmannEquationCanonicalLaneLean.BoltzmannEquation

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure CollisionOperatorPackage {B : BoltzmannEquationPackage} where
  kernelSymmetric : Prop
  conservationLaws : Prop
  entropyProduction : Prop
  equilibriumCharacterization : Prop

structure CollisionOperatorEvidence {B : BoltzmannEquationPackage} (C : CollisionOperatorPackage) where
  kernelSymmetricClosed : C.kernelSymmetric
  conservationLawsClosed : C.conservationLaws
  entropyProductionClosed : C.entropyProduction
  equilibriumCharacterizationClosed : C.equilibriumCharacterization

def CollisionOperatorClosed {B : BoltzmannEquationPackage} (C : CollisionOperatorPackage) : Prop :=
  C.kernelSymmetric ∧ C.conservationLaws ∧ C.entropyProduction ∧ C.equilibriumCharacterization

theorem collision_operator_closed_from_evidence {B : BoltzmannEquationPackage} (C : CollisionOperatorPackage) (E : CollisionOperatorEvidence C) : CollisionOperatorClosed C := by
  exact And.intro E.kernelSymmetricClosed (And.intro E.conservationLawsClosed (And.intro E.entropyProductionClosed E.equilibriumCharacterizationClosed))

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse