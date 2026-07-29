import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicNormConstruction where
  carrier : Type
  prime : ℕ
  primeGeqTwo : prime ≥ 2
  norm : carrier → ℝ
  nonArchimedean : Prop
  multiplicative : Prop
  strongTriangleInequality : Prop
  normClosed : nonArchimedean ∧ multiplicative ∧ strongTriangleInequality

theorem pAdicConstruction_from_primitives (p : ℕ) (hp : p ≥ 2) (c : Type) (n : c → ℝ) (hna : Prop) (hm : Prop) (hst : Prop) (h : hna ∧ hm ∧ hst) : PAdicNormConstruction := {
  carrier := c
  prime := p
  primeGeqTwo := hp
  norm := n
  nonArchimedean := hna
  multiplicative := hm
  strongTriangleInequality := hst
  normClosed := h
}

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse