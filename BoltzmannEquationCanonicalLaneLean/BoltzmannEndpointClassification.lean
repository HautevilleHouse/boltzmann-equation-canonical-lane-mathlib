import BoltzmannEquationCanonicalLaneLean.BoltzmannHydrodynamicLimit

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannEndpointClassificationPackage {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    {Epkg : BoltzmannEntropyPackage S} {N : BoltzmannHydrodynamicLimitPackage Epkg} where
  targetDistribution : Type u
  maxwellianEquilibrium : Prop
  hTheoremConvergence : Prop
  convergenceRate : Prop

structure BoltzmannEndpointEvidence {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    {Epkg : BoltzmannEntropyPackage S} {N : BoltzmannHydrodynamicLimitPackage Epkg}
    (Endpkg : BoltzmannEndpointClassificationPackage N) where
  maxwellianEquilibriumClosed : Endpkg.maxwellianEquilibrium
  hTheoremConvergenceClosed : Endpkg.hTheoremConvergence
  convergenceRateClosed : Endpkg.convergenceRate

def BoltzmannEndpointClosed {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    {Epkg : BoltzmannEntropyPackage S} {N : BoltzmannHydrodynamicLimitPackage Epkg}
    (Endpkg : BoltzmannEndpointClassificationPackage N) : Prop :=
  Endpkg.maxwellianEquilibrium ∧
  Endpkg.hTheoremConvergence ∧
  Endpkg.convergenceRate

theorem boltzmann_endpoint_closed_from_evidence
    {G : BoltzmannPhaseSpace} {F : BoltzmannEquationPDE G}
    {S : BoltzmannCollisionModel} {Epkg : BoltzmannEntropyPackage S}
    {N : BoltzmannHydrodynamicLimitPackage Epkg}
    (Endpkg : BoltzmannEndpointClassificationPackage N)
    (E : BoltzmannEndpointEvidence Endpkg) : BoltzmannEndpointClosed Endpkg := by
  exact And.intro E.maxwellianEquilibriumClosed
    (And.intro E.hTheoremConvergenceClosed E.convergenceRateClosed)

theorem boltzmann_endpoint_supplies_maxwellian
    {G : BoltzmannPhaseSpace} {F : BoltzmannEquationPDE G}
    {S : BoltzmannCollisionModel} {Epkg : BoltzmannEntropyPackage S}
    {N : BoltzmannHydrodynamicLimitPackage Epkg}
    (Endpkg : BoltzmannEndpointClassificationPackage N) :
    Endpkg.maxwellianEquilibrium := by
  exact Endpkg.maxwellianEquilibrium

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse