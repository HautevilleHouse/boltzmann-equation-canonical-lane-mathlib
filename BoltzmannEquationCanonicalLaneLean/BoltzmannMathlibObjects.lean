import BoltzmannEquationCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BoltzmannPhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BoltzmannAdmittedObject where
  space : BoltzmannPhaseSpace
  collisionalProcess : Prop
  equilibriumReachable : Prop
  kineticModel : Type
  modelTopology : TopologicalSpace kineticModel
  satisfiesBoltzmannEquation : Prop
  conclusion : satisfiesBoltzmannEquation

structure BoltzmannEndgameState where
  object : BoltzmannAdmittedObject

def BoltzmannWitnessClosed (O : BoltzmannAdmittedObject) : Prop :=
  O.satisfiesBoltzmannEquation

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse
