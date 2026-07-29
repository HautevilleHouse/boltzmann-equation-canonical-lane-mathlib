import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannAdmittedObject where
  distributionFunction : Type
  phaseSpace : Type
  collisionKernel : Type
  equilibriumState : Prop
  entropyCondition : Prop
  conclusion : equilibriumState ∧ entropyCondition

structure BoltzmannAdmissibleClass where
  object : BoltzmannAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BoltzmannAdmissibleClass) : Prop :=
  (A.object.conclusion.1 ∧ A.object.conclusion.2) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse