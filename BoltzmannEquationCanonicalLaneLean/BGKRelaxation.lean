import BoltzmannEquationCanonicalLaneLean.BoltzmannCollisionOperator

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BGKRelaxationPackage where
  relaxationTime : Type
  equilibriumState : Type
  BGKEquation : Prop
  entropyProduction : Prop

structure BGKRelaxationEvidence (B : BGKRelaxationPackage) where
  BGKEquationClosed : B.BGKEquation
  entropyProductionClosed : B.entropyProduction

def BGKRelaxationClosed (B : BGKRelaxationPackage) : Prop :=
  B.BGKEquation ∧ B.entropyProduction

theorem bgk_relaxation_closed_from_evidence
    (B : BGKRelaxationPackage) (E : BGKRelaxationEvidence B) :
    BGKRelaxationClosed B := by
  exact And.intro E.BGKEquationClosed E.entropyProductionClosed

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse