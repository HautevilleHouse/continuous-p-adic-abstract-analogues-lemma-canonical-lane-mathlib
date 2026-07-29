import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure AbstractAnalogueLayerPackage where
  sourceCategory : Type
  targetCategory : Type
  functor : Type
  pAdicStructurePreserved : Prop
  continuousStructurePreserved : Prop
  abstractEquivalence : Prop

structure AbstractAnalogueLayerEvidence (A : AbstractAnalogueLayerPackage) where
  pAdicStructurePreservedClosed : A.pAdicStructurePreserved
  continuousStructurePreservedClosed : A.continuousStructurePreserved
  abstractEquivalenceClosed : A.abstractEquivalence

def AbstractAnalogueLayerClosed (A : AbstractAnalogueLayerPackage) : Prop :=
  A.pAdicStructurePreserved ∧ A.continuousStructurePreserved ∧ A.abstractEquivalence

theorem abstract_analogue_layer_closed_from_evidence
    (A : AbstractAnalogueLayerPackage) (E : AbstractAnalogueLayerEvidence A) :
    AbstractAnalogueLayerClosed A := by
  exact And.intro E.pAdicStructurePreservedClosed
    (And.intro E.continuousStructurePreservedClosed E.abstractEquivalenceClosed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse