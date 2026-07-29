import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoltzmannEquationCanonicalLaneLean.BoltzmannAdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure CollisionKernelPackage (A : AdmissibleClass) where
  collisionKernel : Type u
  kernelPositivity : Prop
  gainLossDecomposition : Prop
  angularCutoff : Prop

structure CollisionKernelEvidence {A : AdmissibleClass} (K : CollisionKernelPackage A) where
  kernelPositivityClosed : K.kernelPositivity
  gainLossDecompositionClosed : K.gainLossDecomposition
  angularCutoffClosed : K.angularCutoff

def CollisionKernelClosed {A : AdmissibleClass} (K : CollisionKernelPackage A) : Prop :=
  K.kernelPositivity ∧ K.gainLossDecomposition ∧ K.angularCutoff

theorem collision_kernel_closed_from_evidence {A : AdmissibleClass}
    (K : CollisionKernelPackage A) (E : CollisionKernelEvidence K) :
    CollisionKernelClosed K := by
  exact And.intro E.kernelPositivityClosed
    (And.intro E.gainLossDecompositionClosed E.angularCutoffClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse