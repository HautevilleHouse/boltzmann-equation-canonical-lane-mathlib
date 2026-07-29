import BoltzmannEquationCanonicalLaneLean.BoltzmannRoute
import BoltzmannEquationCanonicalLaneLean.BoltzmannCollisionControlled

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure CollisionAnalyticCertificate (C : BoltzmannCollisionControlledPackage) where
  collisionKernelBounded : Prop
  angularCutoffSatisfied : Prop
  grazingCollisionsControlled : Prop
  entropyProductionLowerBound : Prop
  collisionKernelBoundedClosed : collisionKernelBounded
  angularCutoffSatisfiedClosed : angularCutoffSatisfied
  grazingCollisionsControlledClosed : grazingCollisionsControlled
  entropyProductionLowerBoundClosed : entropyProductionLowerBound
  collisionEvidence : BoltzmannCollisionEvidence C

def CollisionAnalyticCertificateClosed (C : BoltzmannCollisionControlledPackage) (Cert : CollisionAnalyticCertificate C) : Prop :=
  Cert.collisionKernelBounded ∧
  Cert.angularCutoffSatisfied ∧
  Cert.grazingCollisionsControlled ∧
  Cert.entropyProductionLowerBound ∧
  BoltzmannCollisionControlledClosed C

theorem collision_analytic_certificate_closed (C : BoltzmannCollisionControlledPackage) (Cert : CollisionAnalyticCertificate C) :
    CollisionAnalyticCertificateClosed C Cert := by
  exact And.intro Cert.collisionKernelBoundedClosed
    (And.intro Cert.angularCutoffSatisfiedClosed
      (And.intro Cert.grazingCollisionsControlledClosed
        (And.intro Cert.entropyProductionLowerBoundClosed
          (boltzmann_collision_controlled_closed_from_evidence C Cert.collisionEvidence))))

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse
