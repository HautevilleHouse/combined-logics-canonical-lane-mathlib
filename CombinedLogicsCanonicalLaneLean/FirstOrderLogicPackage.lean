import CombinedLogicsCanonicalLaneLean.ModalLogicPackage

/-!
# First-Order Logic Package
-/

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure FirstOrderLogicPackage where
  language : Type u
  structure : Type v
  satisfaction : Prop
  soundnessTheorem : Prop
  completenessTheorem : Prop
  compactnessTheorem : Prop
  interpolationTheorem : Prop

structure FirstOrderLogicEvidence (F : FirstOrderLogicPackage) where
  languageClosed : Type u
  structureClosed : Type v
  satisfactionClosed : F.satisfaction
  soundnessTheoremClosed : F.soundnessTheorem
  completenessTheoremClosed : F.completenessTheorem
  compactnessTheoremClosed : F.compactnessTheorem
  interpolationTheoremClosed : F.interpolationTheorem

def FirstOrderLogicClosed (F : FirstOrderLogicPackage) : Prop :=
  F.satisfaction ∧ F.soundnessTheorem ∧ F.completenessTheorem ∧ F.compactnessTheorem ∧ F.interpolationTheorem

theorem first_order_logic_closed_from_evidence (F : FirstOrderLogicPackage) (E : FirstOrderLogicEvidence F) :
    FirstOrderLogicClosed F := by
  exact And.intro E.satisfactionClosed (And.intro E.soundnessTheoremClosed (And.intro E.completenessTheoremClosed (And.intro E.compactnessTheoremClosed E.interpolationTheoremClosed)))

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse