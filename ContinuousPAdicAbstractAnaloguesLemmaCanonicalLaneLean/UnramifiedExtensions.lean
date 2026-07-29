import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure UnramifiedExtension where
  baseField : Type
  completeDiscreteValuationRing : Prop
  residueFieldFinite : Prop
  maximalIdealGeneratedByP : Prop
  galoisGroupProfinite : Prop
  ringOfIntegers : Type
  residueField : Type
  frobeniusAutomorphism : Prop

structure UnramifiedExtensionEvidence (E : UnramifiedExtension) where
  completeDiscreteValuationRingClosed : E.completeDiscreteValuationRing
  residueFieldFiniteClosed : E.residueFieldFinite
  maximalIdealGeneratedByPClosed : E.maximalIdealGeneratedByP
  galoisGroupProfiniteClosed : E.galoisGroupProfinite
  frobeniusAutomorphismClosed : E.frobeniusAutomorphism

def UnramifiedExtensionClosed (E : UnramifiedExtension) : Prop :=
  E.completeDiscreteValuationRing ∧ E.residueFieldFinite ∧ E.maximalIdealGeneratedByP ∧
  E.galoisGroupProfinite ∧ E.frobeniusAutomorphism

theorem unramified_extension_closed_from_evidence (E : UnramifiedExtension) (Ev : UnramifiedExtensionEvidence E) :
    UnramifiedExtensionClosed E := by
  exact And.intro Ev.completeDiscreteValuationRingClosed
    (And.intro Ev.residueFieldFiniteClosed
      (And.intro Ev.maximalIdealGeneratedByPClosed
        (And.intro Ev.galoisGroupProfiniteClosed Ev.frobeniusAutomorphismClosed)))

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse