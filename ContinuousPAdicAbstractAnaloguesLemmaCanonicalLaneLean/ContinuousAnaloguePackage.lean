import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure ContinuousAnaloguePackage where
  baseField : Type
  pAdicCompletion : Type
  continuousFunctionSpace : Type
  interpolationProperty : Prop
  analyticContinuation : Prop
  functionalEquation : Prop

structure ContinuousAnalogueEvidence (P : ContinuousAnaloguePackage) where
  interpolationPropertyClosed : P.interpolationProperty
  analyticContinuationClosed : P.analyticContinuation
  functionalEquationClosed : P.functionalEquation

def ContinuousAnalogueClosed (P : ContinuousAnaloguePackage) : Prop :=
  P.interpolationProperty ∧ P.analyticContinuation ∧ P.functionalEquation

theorem continuous_analogue_closed_from_evidence
    (P : ContinuousAnaloguePackage) (E : ContinuousAnalogueEvidence P) :
    ContinuousAnalogueClosed P := by
  exact And.intro E.interpolationPropertyClosed
    (And.intro E.analyticContinuationClosed E.functionalEquationClosed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse