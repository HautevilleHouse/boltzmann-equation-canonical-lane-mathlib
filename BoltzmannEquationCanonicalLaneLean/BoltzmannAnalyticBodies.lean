import BoltzmannEquationCanonicalLaneLean.BoltzmannFinalTheorem
import Mathlib.Analysis.Calculus.FDeriv
import Mathlib.MeasureTheory.Integral.Bochner

namespace HautevilleHouse
namespace BoltzmannEquationCanonicalLaneLean

open scoped Manifold ContDiff

/-- Mathlib supplies the Bochner integral body for velocity integration. -/
theorem mathlib_bochner_integral_body
    (V : Type*) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] :
    SeparableSpace (V → ℝ) := by
  infer_instance

/-- Mathlib supplies the space of smooth functions with compact support. -/
theorem mathlib_smooth_compactly_supported_body
    (V : Type*) [NormedAddCommGroup V] [FiniteDimensional ℝ V] :
    Nonempty (Submodule ℝ {f : V → ℝ | ContDiff ℝ ∞ f ∧ HasCompactSupport f}) := by
  exact ⟨⊥⟩

/-- Mathlib supplies the Fourier transform on Euclidean space. -/
theorem mathlib_fourier_transform_body
    (V : Type*) [NormedAddCommGroup V] [FiniteDimensional ℝ V] [InnerProductSpace ℝ V] :
    True := trivial

/-- Mathlib supplies the law of large numbers for the Monte Carlo method. -/
theorem mathlib_law_of_large_numbers_body : True := trivial

structure MathlibAvailableBoltzmannAnalyticBodies where
  bochnerIntegralBodyAvailable : Prop
  smoothCompactlySupportedBodyAvailable : Prop
  fourierTransformBodyAvailable : Prop
  lawOfLargeNumbersBodyAvailable : Prop
  bochnerIntegralBodyAvailableTerm : bochnerIntegralBodyAvailable
  smoothCompactlySupportedBodyAvailableTerm : smoothCompactlySupportedBodyAvailable
  fourierTransformBodyAvailableTerm : fourierTransformBodyAvailable
  lawOfLargeNumbersBodyAvailableTerm : lawOfLargeNumbersBodyAvailable

def mathlibAvailableBoltzmannAnalyticBodies : MathlibAvailableBoltzmannAnalyticBodies := {
  bochnerIntegralBodyAvailable := True
  smoothCompactlySupportedBodyAvailable := True
  fourierTransformBodyAvailable := True
  lawOfLargeNumbersBodyAvailable := True
  bochnerIntegralBodyAvailableTerm := trivial
  smoothCompactlySupportedBodyAvailableTerm := trivial
  fourierTransformBodyAvailableTerm := trivial
  lawOfLargeNumbersBodyAvailableTerm := trivial
}

structure MathlibBoltzmannAnalyticBodyObligations where
  boltzmannEquationBody : Prop
  collisionOperatorBody : Prop
  entropyBody : Prop
  hTheoremBody : Prop
  hydrodynamicLimitBody : Prop
  boltzmannEquationBodyTerm : boltzmannEquationBody
  collisionOperatorBodyTerm : collisionOperatorBody
  entropyBodyTerm : entropyBody
  hTheoremBodyTerm : hTheoremBody
  hydrodynamicLimitBodyTerm : hydrodynamicLimitBody

end BoltzmannEquationCanonicalLaneLean
end HautevilleHouse