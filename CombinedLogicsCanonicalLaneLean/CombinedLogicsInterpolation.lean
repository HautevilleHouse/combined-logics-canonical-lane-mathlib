import CombinedLogicsCanonicalLaneLean.Completeness

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure InterpolationPackage {S : SoundnessPackage} {C : CompletenessPackage S} where
  interpolationProperty : Prop
  lyndonProperty : Prop
  interpolationClosed : interpolationProperty
  lyndonClosed : lyndonProperty

structure InterpolationEvidence {S : SoundnessPackage} {C : CompletenessPackage S} (I : InterpolationPackage C) where
  interpolationClosed : I.interpolationClosed
  lyndonClosed : I.lyndonClosed

def InterpolationClosed {S : SoundnessPackage} {C : CompletenessPackage S} (I : InterpolationPackage C) : Prop :=
  I.interpolationProperty ∧ I.lyndonProperty

theorem interpolation_closed_from_evidence {S : SoundnessPackage} {C : CompletenessPackage S} (I : InterpolationPackage C) (E : InterpolationEvidence I) :
    InterpolationClosed I := by
  exact And.intro E.interpolationClosed E.lyndonClosed

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse