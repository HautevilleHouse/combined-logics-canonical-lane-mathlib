import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedLogicSignature where
  carrier : Type u
  inferentialStructure : Prop
  compositionLaw : Prop
  closureUnderEntailment : Prop
  inferentialStructureTerm : inferentialStructure
  compositionLawTerm : compositionLaw
  closureUnderEntailmentTerm : closureUnderEntailment

structure CombinedLogicSignatureEvidence (S : CombinedLogicSignature) where
  inferentialStructureClosed : S.inferentialStructure
  compositionLawClosed : S.compositionLaw
  closureUnderEntailmentClosed : S.closureUnderEntailment

def CombinedLogicSignatureClosed (S : CombinedLogicSignature) : Prop :=
  S.inferentialStructure ∧ S.compositionLaw ∧ S.closureUnderEntailment

theorem combined_logic_signature_closed_from_evidence (S : CombinedLogicSignature)
    (E : CombinedLogicSignatureEvidence S) : CombinedLogicSignatureClosed S := by
  exact And.intro E.inferentialStructureClosed
    (And.intro E.compositionLawClosed E.closureUnderEntailmentClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse