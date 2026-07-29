import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicBall (p : ℕ) (hp : p.Prime) where
  center : ℚ_p
  radius : ℚ_p
  radius_pos : radius > 0

structure ContinuousPAdicSpace (p : ℕ) (hp : p.Prime) where
  space : Type u
  topology : TopologicalSpace space
  is_p_adic : Prop
  balls : ℚ_p → ℚ_p → Set space
  is_ultrametric : Prop

structure PAdicAdmittedObject (p : ℕ) (hp : p.Prime) where
  space : ContinuousPAdicSpace p hp
  completeness : Prop
  locally_compact : Prop
  conclusion : completeness ∧ locally_compact

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse