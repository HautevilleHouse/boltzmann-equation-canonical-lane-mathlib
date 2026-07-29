import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannAdmissibleClass
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannCollisionOperator

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure EntropyPackage {A : AdmissibleClass}
    (K : CollisionKernelPackage A) where
  entropyFunctional : Type u
  monotonicityFormula : Prop
  equilibriumCharacterization : Prop

structure EntropyEvidence {A : AdmissibleClass} {K : CollisionKernelPackage A}
    (E : EntropyPackage K) where
  monotonicityFormulaClosed : E.monotonicityFormula
  equilibriumCharacterizationClosed : E.equilibriumCharacterization

def EntropyClosed {A : AdmissibleClass} {K : CollisionKernelPackage A}
    (E : EntropyPackage K) : Prop :=
  E.monotonicityFormula ∧ E.equilibriumCharacterization

theorem entropy_closed_from_evidence {A : AdmissibleClass} {K : CollisionKernelPackage A}
    (E : EntropyPackage K) (Ev : EntropyEvidence E) :
    EntropyClosed E := by
  exact And.intro Ev.monotonicityFormulaClosed Ev.equilibriumCharacterizationClosed

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse