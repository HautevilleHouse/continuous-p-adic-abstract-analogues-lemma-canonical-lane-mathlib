import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure DeRhamCohomologyPackage where
  baseScheme : Type
  crystallineTopos : Type
  periodSheaf : Type
  comparisonIsomorphism : Prop
  frobeniusAction : Prop
  filteredFiltration : Prop
  hyodoKatoIsomorphism : Prop

structure DeRhamCohomologyEvidence (D : DeRhamCohomologyPackage) where
  comparisonIsomorphismClosed : D.comparisonIsomorphism
  frobeniusActionClosed : D.frobeniusAction
  filteredFiltrationClosed : D.filteredFiltration
  hyodoKatoIsomorphismClosed : D.hyodoKatoIsomorphism

def DeRhamCohomologyClosed (D : DeRhamCohomologyPackage) : Prop :=
  D.comparisonIsomorphism ∧ D.frobeniusAction ∧ D.filteredFiltration ∧ D.hyodoKatoIsomorphism

theorem de_rham_cohomology_closed_from_evidence (D : DeRhamCohomologyPackage) (Ev : DeRhamCohomologyEvidence D) :
    DeRhamCohomologyClosed D := by
  exact And.intro Ev.comparisonIsomorphismClosed
    (And.intro Ev.frobeniusActionClosed
      (And.intro Ev.filteredFiltrationClosed Ev.hyodoKatoIsomorphismClosed))

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse