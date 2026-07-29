import BoltzmannEquationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

def ConstrainedBoltzmannClosure (A : BoltzmannAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boltzmann_endgame (A : BoltzmannAdmissibleClass) : ConstrainedBoltzmannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse