import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.PAdicFieldPackage

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure ContinuousFunctionPackage (P : PAdicFieldPackage) where
  source : P.fieldType
  target : P.fieldType
  functionSet : Set (P.fieldType → P.fieldType)
  continuityProperty : Prop
  uniformContinuityProperty : Prop
  compositionClosed : Prop
  translationInvariant : Prop
  continuityPropertyTerm : continuityProperty
  uniformContinuityPropertyTerm : uniformContinuityProperty
  compositionClosedTerm : compositionClosed
  translationInvariantTerm : translationInvariant

structure ContinuousFunctionEvidence (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) where
  continuityClosed : C.continuityProperty
  uniformContinuityClosed : C.uniformContinuityProperty
  compositionClosedClosed : C.compositionClosed
  translationInvariantClosed : C.translationInvariant

def ContinuousFunctionClosed (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) : Prop :=
  C.continuityProperty ∧ C.uniformContinuityProperty ∧ C.compositionClosed ∧ C.translationInvariant

theorem continuous_function_closed_from_evidence (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) (E : ContinuousFunctionEvidence P C) : ContinuousFunctionClosed P C := by
  exact And.intro E.continuityClosed (And.intro E.uniformContinuityClosed (And.intro E.compositionClosedClosed E.translationInvariantClosed))

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse