import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannAdmissibleObject where
  phaseSpace : Type u
  distributionFunction : phaseSpace → ℝ
  collisionOperatorDefined : Prop
  hTheoremHolds : Prop

structure AdmissibleClass where
  object : BoltzmannAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoltzmannWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse