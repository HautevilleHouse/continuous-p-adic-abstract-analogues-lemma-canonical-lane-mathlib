import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.NormResidueSymbol

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure AbstractClassFieldTheory (p : ℕ) (hp : p.Prime) where
  base_field : Type u
  is_p_adic : Prop
  maximal_abelian_extension : Type u
  reciprocity_map : NormResidueSymbol p hp → maximal_abelian_extension → ℚ_p
  existence_theorem : Prop
  isomorphism_theorem : Prop

structure ClassFieldTheoryEvidence {p : ℕ} {hp : p.Prime} (C : AbstractClassFieldTheory p hp) where
  existence_closed : C.existence_theorem
  isomorphism_closed : C.isomorphism_theorem

def AbstractClassFieldTheoryClosed {p : ℕ} {hp : p.Prime} (C : AbstractClassFieldTheory p hp) : Prop :=
  C.existence_theorem ∧ C.isomorphism_theorem

theorem abstract_class_field_theory_closed_from_evidence {p : ℕ} {hp : p.Prime} (C : AbstractClassFieldTheory p hp) (E : ClassFieldTheoryEvidence C) : AbstractClassFieldTheoryClosed C := by
  exact And.intro E.existence_closed E.isomorphism_closed

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse