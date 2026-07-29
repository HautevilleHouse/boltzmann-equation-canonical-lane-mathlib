import BoltzmannEquationCanonicalLaneLean.CollisionOperator

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannEquationPDEPackage (C : CollisionOperatorPackage) where
  timeDomain : Type
  spatialDomain : Type
  velocityDomain : Type
  transportTerm : Prop
  collisionTerm : Prop
  initialBoundaryData : Prop

structure BoltzmannEquationPDEEvidence {C : CollisionOperatorPackage}
    (B : BoltzmannEquationPDEPackage C) where
  transportTermClosed : B.transportTerm
  collisionTermClosed : B.collisionTerm
  initialBoundaryDataClosed : B.initialBoundaryData

def BoltzmannEquationPDEClosed {C : CollisionOperatorPackage}
    (B : BoltzmannEquationPDEPackage C) : Prop :=
  B.transportTerm ∧ B.collisionTerm ∧ B.initialBoundaryData

theorem boltzmann_equation_pde_closed_from_evidence
    {C : CollisionOperatorPackage} (B : BoltzmannEquationPDEPackage C)
    (E : BoltzmannEquationPDEEvidence B) : BoltzmannEquationPDEClosed B := by
  exact And.intro E.transportTermClosed
    (And.intro E.collisionTermClosed E.initialBoundaryDataClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse