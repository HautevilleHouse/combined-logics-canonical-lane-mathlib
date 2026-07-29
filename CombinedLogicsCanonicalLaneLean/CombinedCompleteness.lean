import CombinedLogicsCanonicalLaneLean.LogicTranslation

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedCompletenessPackage (T : LogicTranslation) where
  completeForSource : Prop
  completeForTarget : Prop
  transferTheorem : T.preservesEntailment → completeForSource → completeForTarget
  completeForSourceTerm : completeForSource
  completeForTargetTerm : completeForTarget
  transferTheoremTerm : transferTheorem T.preservesEntailmentTerm.1 completeForSourceTerm

structure CombinedCompletenessEvidence {T : LogicTranslation} (C : CombinedCompletenessPackage T) where
  completeForSourceClosed : C.completeForSource
  completeForTargetClosed : C.completeForTarget

def CombinedCompletenessClosed {T : LogicTranslation} (C : CombinedCompletenessPackage T) : Prop :=
  C.completeForSource ∧ C.completeForTarget

theorem combined_completeness_closed_from_evidence {T : LogicTranslation} (C : CombinedCompletenessPackage T) (E : CombinedCompletenessEvidence C) :
    CombinedCompletenessClosed C := by
  exact And.intro E.completeForSourceClosed E.completeForTargetClosed

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse