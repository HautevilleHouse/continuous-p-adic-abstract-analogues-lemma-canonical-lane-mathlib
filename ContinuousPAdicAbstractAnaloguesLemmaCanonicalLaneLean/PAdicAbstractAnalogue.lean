import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicAbstractAnaloguePackage where
  baseField : Type u
  prime : ℕ
  continuousFunction : Type v
  abstractAnalogueMap : continuousFunction → continuousFunction
  stabilityProperty : Prop
  regularityCondition : Prop
  stabilityPropertyTerm : stabilityProperty
  regularityConditionTerm : regularityCondition

structure PAdicAbstractAnalogueEvidence (P : PAdicAbstractAnaloguePackage) where
  stabilityPropertyClosed : P.stabilityProperty
  regularityConditionClosed : P.regularityCondition

def PAdicAbstractAnalogueClosed (P : PAdicAbstractAnaloguePackage) : Prop :=
  P.stabilityProperty ∧ P.regularityCondition

theorem p_adic_abstract_analogue_closed_from_evidence
    (P : PAdicAbstractAnaloguePackage) (E : PAdicAbstractAnalogueEvidence P) :
    PAdicAbstractAnalogueClosed P := by
  exact And.intro E.stabilityPropertyClosed E.regularityConditionClosed

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse
