import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.AbstractAnalogueEquivalence

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure ContinuousAnalogueBridge {N : PAdicNormConstruction} {F : ContinuousPAdicFunctional N} (A : PAdicAbstractAnalogue N F) where
  bridgeCondition : Prop
  gateCondition : Prop
  bridgeGateClosed : bridgeCondition ∧ gateCondition

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse