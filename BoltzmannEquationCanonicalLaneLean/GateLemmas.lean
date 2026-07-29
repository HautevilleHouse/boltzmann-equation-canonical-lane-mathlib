import BoltzmannEquationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

def gateClosed (A : BoltzmannAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BoltzmannAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse