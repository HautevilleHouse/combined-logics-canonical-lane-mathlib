import CombinedLogicsCanonicalLaneLean.CombinedLogicsObject

/-!
# Modal Logic Package
-/

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure ModalLogicPackage where
  kripkeFrame : Type u
  accessibility : Prop
  validityCondition : Prop
  soundnessTheorem : Prop
  completenessTheorem : Prop

structure ModalLogicEvidence (M : ModalLogicPackage) where
  kripkeFrameClosed : Type u
  accessibilityClosed : M.accessibility
  validityConditionClosed : M.validityCondition
  soundnessTheoremClosed : M.soundnessTheorem
  completenessTheoremClosed : M.completenessTheorem

def ModalLogicClosed (M : ModalLogicPackage) : Prop :=
  M.accessibility ∧ M.validityCondition ∧ M.soundnessTheorem ∧ M.completenessTheorem
  
theorem modal_logic_closed_from_evidence (M : ModalLogicPackage) (E : ModalLogicEvidence M) :
    ModalLogicClosed M := by
  exact And.intro E.accessibilityClosed (And.intro E.validityConditionClosed (And.intro E.soundnessTheoremClosed E.completenessTheoremClosed))

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse