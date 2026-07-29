import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure GaloisRepresentation where
  baseField : Type
  representationSpace : Type
  continuityCondition : Prop
  frobeniusSemisimplicity : Prop
  potentiallySemistable : Prop
  HodgeTateWeights : Prop

structure GaloisRepresentationEvidence (G : GaloisRepresentation) where
  continuityConditionClosed : G.continuityCondition
  frobeniusSemisimplicityClosed : G.frobeniusSemisimplicity
  potentiallySemistableClosed : G.potentiallySemistable
  HodgeTateWeightsClosed : G.HodgeTateWeights

def GaloisRepresentationClosed (G : GaloisRepresentation) : Prop :=
  G.continuityCondition ∧ G.frobeniusSemisimplicity ∧ G.potentiallySemistable ∧ G.HodgeTateWeights

theorem galois_representation_closed_from_evidence (G : GaloisRepresentation) (Ev : GaloisRepresentationEvidence G) :
    GaloisRepresentationClosed G := by
  exact And.intro Ev.continuityConditionClosed
    (And.intro Ev.frobeniusSemisimplicityClosed
      (And.intro Ev.potentiallySemistableClosed Ev.HodgeTateWeightsClosed))

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse