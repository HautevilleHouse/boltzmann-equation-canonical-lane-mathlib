import BoltzmannEquationCanonicalLaneLean.VelocityDistribution

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoundaryConditionsPackage where
  domainBoundary : Type
  specularReflection : Prop
  diffuseReflection : Prop
  maxwellBoundary : Prop
  wellPosedness : Prop

structure BoundaryConditionsEvidence (B : BoundaryConditionsPackage) where
  specularReflectionClosed : B.specularReflection
  diffuseReflectionClosed : B.diffuseReflection
  maxwellBoundaryClosed : B.maxwellBoundary
  wellPosednessClosed : B.wellPosedness

def BoundaryConditionsClosed (B : BoundaryConditionsPackage) : Prop :=
  B.specularReflection ∧ B.diffuseReflection ∧ B.maxwellBoundary ∧ B.wellPosedness

theorem boundary_conditions_closed_from_evidence
    (B : BoundaryConditionsPackage) (E : BoundaryConditionsEvidence B) :
    BoundaryConditionsClosed B := by
  exact And.intro E.specularReflectionClosed (And.intro E.diffuseReflectionClosed (And.intro E.maxwellBoundaryClosed E.wellPosednessClosed))

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse