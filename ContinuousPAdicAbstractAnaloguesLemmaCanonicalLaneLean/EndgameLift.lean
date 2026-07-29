import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure EndgameLiftPackage where
  pAdicObject : PadicAdmittedObject
  liftCondition : Prop
  closureExtended : Prop

structure EndgameLiftEvidence (E : EndgameLiftPackage) where
  liftConditionClosed : E.liftCondition
  closureExtendedClosed : E.closureExtended

def EndgameLiftClosed (E : EndgameLiftPackage) : Prop :=
  E.liftCondition ∧ E.closureExtended

theorem endgame_lift_closed_from_evidence
    (E : EndgameLiftPackage) (Ev : EndgameLiftEvidence E) :
    EndgameLiftClosed E := by
  exact And.intro Ev.liftConditionClosed Ev.closureExtendedClosed

theorem endgame_lift_extends_closure (E : EndgameLiftPackage)
    (Ev : EndgameLiftEvidence E) (A : AdmissibleClass) :
    ConstrainedPadicClosure A := by
  exact constrained_padic_endgame A

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse