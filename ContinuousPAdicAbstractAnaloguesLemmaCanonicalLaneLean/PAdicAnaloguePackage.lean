import ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean.ContinuousFunctionPackage

namespace HautevilleHouse
namespace ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean

structure PAdicAnaloguePackage (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) where
  abstractMap : P.fieldType → P.fieldType
  satisfiesAnalogueEquation : Prop
  boundednessProperty : Prop
  linearityProperty : Prop
  kernelStructure : Prop
  satisfiesAnalogueEquationTerm : satisfiesAnalogueEquation
  boundednessPropertyTerm : boundednessProperty
  linearityPropertyTerm : linearityProperty
  kernelStructureTerm : kernelStructure

structure PAdicAnalogueEvidence (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) (A : PAdicAnaloguePackage P C) where
  analogueEquationClosed : A.satisfiesAnalogueEquation
  boundednessClosed : A.boundednessProperty
  linearityClosed : A.linearityProperty
  kernelClosed : A.kernelStructure

def PAdicAnalogueClosed (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) (A : PAdicAnaloguePackage P C) : Prop :=
  A.satisfiesAnalogueEquation ∧ A.boundednessProperty ∧ A.linearityProperty ∧ A.kernelStructure

theorem padic_analogue_closed_from_evidence (P : PAdicFieldPackage) (C : ContinuousFunctionPackage P) (A : PAdicAnaloguePackage P C) (E : PAdicAnalogueEvidence P C A) : PAdicAnalogueClosed P C A := by
  exact And.intro E.analogueEquationClosed (And.intro E.boundednessClosed (And.intro E.linearityClosed E.kernelClosed))

end ContinuousPAdicAbstractAnaloguesLemmaCanonicalLaneLean
end HautevilleHouse