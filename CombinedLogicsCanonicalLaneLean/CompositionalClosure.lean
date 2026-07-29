import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinedLogicsCanonicalLaneLean.CombinedLogicSignature

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CompositionalClosurePackage (S : CombinedLogicSignature) where
  closedUnderComposition : Prop
  inferentialCompleteness : Prop
  fixedPointProperty : Prop
  closedUnderCompositionTerm : closedUnderComposition
  inferentialCompletenessTerm : inferentialCompleteness
  fixedPointPropertyTerm : fixedPointProperty

structure CompositionalClosureEvidence {S : CombinedLogicSignature}
    (C : CompositionalClosurePackage S) where
  closedUnderCompositionClosed : C.closedUnderComposition
  inferentialCompletenessClosed : C.inferentialCompleteness
  fixedPointPropertyClosed : C.fixedPointProperty

def CompositionalClosureClosed {S : CombinedLogicSignature}
    (C : CompositionalClosurePackage S) : Prop :=
  C.closedUnderComposition ∧ C.inferentialCompleteness ∧ C.fixedPointProperty

theorem compositional_closure_closed_from_evidence {S : CombinedLogicSignature}
    (C : CompositionalClosurePackage S) (E : CompositionalClosureEvidence C) :
    CompositionalClosureClosed C := by
  exact And.intro E.closedUnderCompositionClosed
    (And.intro E.inferentialCompletenessClosed E.fixedPointPropertyClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse