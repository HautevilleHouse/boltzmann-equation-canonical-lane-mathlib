import BoltzmannEquationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

def bridgeClosed (A : BoltzmannAdmissibleClass) : Prop :=
  A.object.conclusion.1 ∧ A.object.conclusion.2

theorem bridge_from_admissible_class (A : BoltzmannAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse