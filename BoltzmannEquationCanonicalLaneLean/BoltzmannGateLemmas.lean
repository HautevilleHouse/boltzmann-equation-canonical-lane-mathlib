import BoltzmannEquationCanonicalLaneLean.BoltzmannBridgeLemmas

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse