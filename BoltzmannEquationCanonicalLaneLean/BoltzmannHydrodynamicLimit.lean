import BoltzmannEquationCanonicalLaneLean.BoltzmannEntropy

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

structure BoltzmannHydrodynamicLimitPackage {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    (Epkg : BoltzmannEntropyPackage S) where
  eulerLimit : Prop
  navierStokesLimit : Prop
  chapmanEnskogExpansion : Prop
  acousticScaling : Prop

structure BoltzmannHydrodynamicLimitEvidence {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    {Epkg : BoltzmannEntropyPackage S} (N : BoltzmannHydrodynamicLimitPackage Epkg) where
  eulerLimitClosed : N.eulerLimit
  navierStokesLimitClosed : N.navierStokesLimit
  chapmanEnskogExpansionClosed : N.chapmanEnskogExpansion
  acousticScalingClosed : N.acousticScaling

def BoltzmannHydrodynamicLimitClosed {G : BoltzmannPhaseSpace}
    {F : BoltzmannEquationPDE G} {S : BoltzmannCollisionModel}
    {Epkg : BoltzmannEntropyPackage S} (N : BoltzmannHydrodynamicLimitPackage Epkg) : Prop :=
  N.eulerLimit ∧ N.navierStokesLimit ∧
  N.chapmanEnskogExpansion ∧ N.acousticScaling

theorem boltzmann_hydrodynamic_limit_closed_from_evidence
    {G : BoltzmannPhaseSpace} {F : BoltzmannEquationPDE G}
    {S : BoltzmannCollisionModel} {Epkg : BoltzmannEntropyPackage S}
    (N : BoltzmannHydrodynamicLimitPackage Epkg) (E : BoltzmannHydrodynamicLimitEvidence N) :
    BoltzmannHydrodynamicLimitClosed N := by
  exact And.intro E.eulerLimitClosed
    (And.intro E.navierStokesLimitClosed
      (And.intro E.chapmanEnskogExpansionClosed E.acousticScalingClosed))

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse