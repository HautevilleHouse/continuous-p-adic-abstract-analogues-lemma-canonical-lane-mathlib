import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.ContinuousPAdicSpaces

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicDecomposition (p : ℕ) (hp : p.Prime) (X : ContinuousPAdicSpace p hp) where
  layers : ℕ → Set X.space
  filtration : ∀ n, layers (n+1) ⊆ layers n
  completenes : ∀ x, x ∈ ⋂ n, layers n → False
  layer_properties : Prop

structure AdicDecompositionEvidence (p : ℕ) (hp : p.Prime) {X : ContinuousPAdicSpace p hp} (D : PAdicDecomposition p hp X) where
  filtration_closed : ∀ n, D.layers (n+1) ⊆ D.layers n
  completenes_closed : ∀ x, x ∈ ⋂ n, D.layers n → False
  layer_properties_closed : D.layer_properties

def AdicDecompositionClosed (p : ℕ) (hp : p.Prime) {X : ContinuousPAdicSpace p hp} (D : PAdicDecomposition p hp X) : Prop :=
  (∀ n, D.layers (n+1) ⊆ D.layers n) ∧
  (∀ x, x ∈ ⋂ n, D.layers n → False) ∧
  D.layer_properties

theorem adic_decomposition_closed_from_evidence (p : ℕ) (hp : p.Prime) {X : ContinuousPAdicSpace p hp} (D : PAdicDecomposition p hp X) (E : AdicDecompositionEvidence p hp D) : AdicDecompositionClosed p hp D := by
  exact And.intro E.filtration_closed (And.intro E.completenes_closed E.layer_properties_closed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse