import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure FontainePeriodRing where
  ringName : String
  construction : Type
  frobeniusEndomorphism : Prop
  thetaMap : Prop
  periodRingProperty : Prop
  
structure FontainePeriodRingEvidence (R : FontainePeriodRing) where
  frobeniusEndomorphismClosed : R.frobeniusEndomorphism
  thetaMapClosed : R.thetaMap
  periodRingPropertyClosed : R.periodRingProperty

def FontainePeriodRingClosed (R : FontainePeriodRing) : Prop :=
  R.frobeniusEndomorphism ∧ R.thetaMap ∧ R.periodRingProperty

theorem fontaine_period_ring_closed_from_evidence (R : FontainePeriodRing) (Ev : FontainePeriodRingEvidence R) :
    FontainePeriodRingClosed R := by
  exact And.intro Ev.frobeniusEndomorphismClosed
    (And.intro Ev.thetaMapClosed Ev.periodRingPropertyClosed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse