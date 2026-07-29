import CombinedLogicsCanonicalLaneLean.RicciFlowPDE

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure SoundnessPackage where
  axiomsConsistent : Prop
  rulesPreserveTruth : Prop
  soundnessTheorem : Prop
  soundnessTheoremClosed : soundnessTheorem

structure SoundnessEvidence (S : SoundnessPackage) where
  axiomsConsistentClosed : S.axiomsConsistent
  rulesPreserveTruthClosed : S.rulesPreserveTruth
  soundnessTheoremClosed : S.soundnessTheoremClosed

def SoundnessClosed (S : SoundnessPackage) : Prop :=
  S.axiomsConsistent ∧ S.rulesPreserveTruth ∧ S.soundnessTheorem

theorem soundness_closed_from_evidence (S : SoundnessPackage) (E : SoundnessEvidence S) :
    SoundnessClosed S := by
  exact And.intro E.axiomsConsistentClosed (And.intro E.rulesPreserveTruthClosed E.soundnessTheoremClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse