import BoltzmannEquationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannEquationPackage where
  phaseSpace : Type
  velocitySpace : Type
  distributionFunction : velocitySpace → phaseSpace → ℝ
  collisionOperator : (velocitySpace → ℝ) → (velocitySpace → ℝ)
  equation : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure BoltzmannEquationEvidence (B : BoltzmannEquationPackage) where
  initialConditionClosed : B.initialCondition
  boundaryConditionClosed : B.boundaryCondition

def BoltzmannEquationClosed (B : BoltzmannEquationPackage) : Prop :=
  B.initialCondition ∧ B.boundaryCondition

theorem boltzmann_equation_closed_from_evidence (B : BoltzmannEquationPackage) (E : BoltzmannEquationEvidence B) : BoltzmannEquationClosed B := by
  exact And.intro E.initialConditionClosed E.boundaryConditionClosed

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse