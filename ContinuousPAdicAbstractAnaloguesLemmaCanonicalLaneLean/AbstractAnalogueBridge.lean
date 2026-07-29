import canonicalLaneMathlib.AdmissibleClass
import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.ContinuousPAdicSpaces

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PAdicAdmittedObject p hp obj => obj.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with ⟨p, hp, obj⟩
  exact obj.conclusion

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse