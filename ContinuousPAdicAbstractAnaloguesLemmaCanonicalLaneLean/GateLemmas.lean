import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse