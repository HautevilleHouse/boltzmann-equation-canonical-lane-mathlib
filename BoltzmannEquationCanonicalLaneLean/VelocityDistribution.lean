import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure VelocityDistributionPackage where
  phaseSpace : Type
  distributionFunction : Type
  maxwellian : Prop
  momentsDefinition : Prop
  entropy : Prop

structure VelocityDistributionEvidence (V : VelocityDistributionPackage) where
  maxwellianClosed : V.maxwellian
  momentsDefinitionClosed : V.momentsDefinition
  entropyClosed : V.entropy

def VelocityDistributionClosed (V : VelocityDistributionPackage) : Prop :=
  V.maxwellian ∧ V.momentsDefinition ∧ V.entropy

theorem velocity_distribution_closed_from_evidence
    (V : VelocityDistributionPackage) (E : VelocityDistributionEvidence V) :
    VelocityDistributionClosed V := by
  exact And.intro E.maxwellianClosed (And.intro E.momentsDefinitionClosed E.entropyClosed)

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse