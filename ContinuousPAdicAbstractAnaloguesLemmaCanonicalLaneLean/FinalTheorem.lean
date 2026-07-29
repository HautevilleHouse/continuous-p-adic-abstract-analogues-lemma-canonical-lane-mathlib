import continuousPAdicAbstractAnaloguesLean.PAdicBridgeLemmas
import continuousPAdicAbstractAnaloguesLean.PAdicGateLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

def ConstrainedPAdicAnalogueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_p_adic_analogue_endgame (A : AdmissibleClass) :
    ConstrainedPAdicAnalogueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse
