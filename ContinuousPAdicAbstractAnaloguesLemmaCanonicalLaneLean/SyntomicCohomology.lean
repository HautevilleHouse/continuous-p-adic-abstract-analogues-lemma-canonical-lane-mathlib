import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure SyntomicCohomology where
  baseScheme : Type
  syntomicSite : Type
  periodSheaf : Type
  comparisonWithEtale : Prop
  comparisonWithCrystalline : Prop

structure SyntomicCohomologyEvidence (S : SyntomicCohomology) where
  comparisonWithEtaleClosed : S.comparisonWithEtale
  comparisonWithCrystallineClosed : S.comparisonWithCrystalline

def SyntomicCohomologyClosed (S : SyntomicCohomology) : Prop :=
  S.comparisonWithEtale ∧ S.comparisonWithCrystalline

theorem syntomic_cohomology_closed_from_evidence (S : SyntomicCohomology) (Ev : SyntomicCohomologyEvidence S) :
    SyntomicCohomologyClosed S := by
  exact And.intro Ev.comparisonWithEtaleClosed Ev.comparisonWithCrystallineClosed

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse