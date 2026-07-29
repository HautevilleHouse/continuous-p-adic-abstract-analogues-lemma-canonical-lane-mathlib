import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.PAdicAbstractAnalogue

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure AbstractAnalogueEquivalence (N : PAdicNormConstruction) (F : ContinuousPAdicFunctional N) (A1 A2 : PAdicAbstractAnalogue N F) where
  equivalenceMap : A1.target → A2.target
  bijectivity : Prop
  structureCompatibility : Prop
  equivalenceClosed : bijectivity ∧ structureCompatibility

theorem abstractAnalogueEquivalence_from_evidence (N : PAdicNormConstruction) (F : ContinuousPAdicFunctional N) (A1 A2 : PAdicAbstractAnalogue N F) (e : A1.target → A2.target) (hb : Prop) (hs : Prop) (h : hb ∧ hs) : AbstractAnalogueEquivalence N F A1 A2 := {
  equivalenceMap := e
  bijectivity := hb
  structureCompatibility := hs
  equivalenceClosed := h
}

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse