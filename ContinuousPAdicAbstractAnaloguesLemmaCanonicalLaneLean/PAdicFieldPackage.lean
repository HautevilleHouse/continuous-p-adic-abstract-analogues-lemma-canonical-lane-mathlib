import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicFieldPackage where
  fieldType : Type u
  prime : ℕ
  valuationMap : fieldType → ℚ
  additiveStructure : AddCommGroup fieldType
  multiplicativeStructure : CommRing fieldType
  topology : TopologicalSpace fieldType
  isComplete : Prop
  isDiscretelyValued : Prop
  valuationDefined : ∀ x : fieldType, valuationMap x ∈ ℤ
  completionExists : Prop
  completionExistsTerm : completionExists

structuronalPAdicFieldEvidence (P : PAdicFieldPackage) where
  isCompleteClosed : P.isComplete
  isDiscretelyValuedClosed : P.isDiscretelyValued
  valuationDefinedClosed : P.valuationDefined

def PAdicFieldClosed (P : PAdicFieldPackage) : Prop :=
  P.isComplete ∧ P.isDiscretelyValued ∧ P.valuationDefined

theorem padic_field_closed_from_evidence (P : PAdicFieldPackage) (E : PonalPAdicFieldEvidence P) :
    PAdicFieldClosed P := by
  exact And.intro E.isCompleteClosed (And.intro E.isDiscretelyValuedClosed E.valuationDefinedClosed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse