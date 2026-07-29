import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.PAdicNormConstruction

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure ContinuousPAdicFunctional (N : PAdicNormConstruction) where
  source : N.carrier
  target : Type
  targetTopology : TopologicalSpace target
  functionMap : N.carrier → target
  continuous : Prop
  compatibleWithNorm : Prop
  functionalClosed : continuous ∧ compatibleWithNorm

theorem continuousPAdicFunctional_from_evidence (N : PAdicNormConstruction) (s : N.carrier) (t : Type) [TopologicalSpace t] (f : N.carrier → t) (hc : Prop) (hcomp : Prop) (h : hc ∧ hcomp) : ContinuousPAdicFunctional N := {
  source := s
  target := t
  targetTopology := inferInstance
  functionMap := f
  continuous := hc
  compatibleWithNorm := hcomp
  functionalClosed := h
}

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse