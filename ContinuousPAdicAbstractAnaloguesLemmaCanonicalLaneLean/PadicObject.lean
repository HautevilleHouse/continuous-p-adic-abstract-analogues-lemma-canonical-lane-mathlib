import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PadicAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  pAdicStructure : Prop
  continuousAnalogueCondition : Prop
  abstractAnaloguesLayer : Prop
  conclusion : Prop

structure PadicEndgameState where
  object : PadicAdmittedObject

def PadicWitnessClosed (O : PadicAdmittedObject) : Prop :=
  O.conclusion

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse