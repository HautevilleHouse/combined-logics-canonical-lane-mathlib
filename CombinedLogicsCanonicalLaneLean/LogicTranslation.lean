import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure LogicTranslation where
  sourceLogic : Type
  targetLogic : Type
  translationMap : sourceLogic → targetLogic
  preservesEntailment : Prop
  preservesConsistency : Prop
  translationMapTerm : preservesEntailment ∧ preservesConsistency

structure LogicTranslationEvidence (T : LogicTranslation) where
  preservesEntailmentClosed : T.preservesEntailment
  preservesConsistencyClosed : T.preservesConsistency

def LogicTranslationClosed (T : LogicTranslation) : Prop :=
  T.preservesEntailment ∧ T.preservesConsistency

theorem logic_translation_closed_from_evidence (T : LogicTranslation) (E : LogicTranslationEvidence T) :
    LogicTranslationClosed T := by
  exact And.intro E.preservesEntailmentClosed E.preservesConsistencyClosed

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse