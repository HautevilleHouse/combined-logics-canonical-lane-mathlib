import CombinedLogicsCanonicalLaneLean.Soundness

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CompletenessPackage (S : SoundnessPackage) where
  canonicalModelBuilt : Prop
  truthImpliesProvable : Prop
  completenessTheorem : Prop
  completenessTheoremClosed : completenessTheorem

structure CompletenessEvidence {S : SoundnessPackage} (C : CompletenessPackage S) where
  canonicalModelBuiltClosed : C.canonicalModelBuilt
  truthImpliesProvableClosed : C.truthImpliesProvable
  completenessTheoremClosed : C.completenessTheoremClosed

def CompletenessClosed {S : SoundnessPackage} (C : CompletenessPackage S) : Prop :=
  C.canonicalModelBuilt ∧ C.truthImpliesProvable ∧ C.completenessTheorem

theorem completeness_closed_from_evidence {S : SoundnessPackage} (C : CompletenessPackage S) (E : CompletenessEvidence C) :
    CompletenessClosed C := by
  exact And.intro E.canonicalModelBuiltClosed (And.intro E.truthImpliesProvableClosed E.completenessTheoremClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse