import BoltzmannEquationCanonicalLaneLean.BoltzmannAnalyticProof

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure CollisionAnalyticEvidenceTerms (C : BoltzmannCollisionControlledPackage) (Cert : CollisionAnalyticCertificate C) where
  collisionKernelBoundedTerm : Cert.collisionKernelBounded
  angularCutoffSatisfiedTerm : Cert.angularCutoffSatisfied
  grazingCollisionsControlledTerm : Cert.grazingCollisionsControlled
  entropyProductionLowerBoundTerm : Cert.entropyProductionLowerBound
  collisionControlledClosed : BoltzmannCollisionControlledClosed C

def CollisionAnalyticCertificate.evidenceTerms (C : BoltzmannCollisionControlledPackage) (Cert : CollisionAnalyticCertificate C) : CollisionAnalyticEvidenceTerms C Cert := {
  collisionKernelBoundedTerm := Cert.collisionKernelBoundedClosed
  angularCutoffSatisfiedTerm := Cert.angularCutoffSatisfiedClosed
  grazingCollisionsControlledTerm := Cert.grazingCollisionsControlledClosed
  entropyProductionLowerBoundTerm := Cert.entropyProductionLowerBoundClosed
  collisionControlledClosed := boltzmann_collision_controlled_closed_from_evidence C Cert.collisionEvidence
}

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse
