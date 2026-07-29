import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.ContinuousPAdicSpaces

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure NormResidueSymbol (p : ℕ) (hp : p.Prime) where
  field : Type u
  is_p_adic : Prop
  symbol : field → field → ℚ_p
  bilinear : Prop
  skew_symmetric : Prop
  nondegenerate : Prop

structure NormResidueEvidence {p : ℕ} {hp : p.Prime} (S : NormResidueSymbol p hp) where
  bilinear_closed : S.bilinear
  skew_symmetric_closed : S.skew_symmetric
  nondegenerate_closed : S.nondegenerate

def NormResidueClosed {p : ℕ} {hp : p.Prime} (S : NormResidueSymbol p hp) : Prop :=
  S.bilinear ∧ S.skew_symmetric ∧ S.nondegenerate

theorem norm_residue_closed_from_evidence {p : ℕ} {hp : p.Prime} (S : NormResidueSymbol p hp) (E : NormResidueEvidence S) : NormResidueClosed S := by
  exact And.intro E.bilinear_closed (And.intro E.skew_symmetric_closed E.nondegenerate_closed)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse