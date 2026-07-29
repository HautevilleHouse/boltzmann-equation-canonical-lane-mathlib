import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannAdmissibleClass
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannCollisionOperator
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannEntropy

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

def BoltzmannWitnessClosed (O : BoltzmannAdmissibleObject) : Prop :=
  O.hTheoremHolds

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoltzmannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.hTheoremHolds

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBoltzmannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boltzmann_endgame (A : AdmissibleClass) :
    ConstrainedBoltzmannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse