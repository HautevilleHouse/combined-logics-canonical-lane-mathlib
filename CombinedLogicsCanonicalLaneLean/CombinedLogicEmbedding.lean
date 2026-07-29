import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinedLogicsCanonicalLaneLean.CombinedLogicSignature

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedLogicEmbedding (S T : CombinedLogicSignature) where
  sourceSignature : S
  targetSignature : T
  embeddingMap : S.carrier → T.carrier
  preservesInference : Prop
  respectsComposition : Prop
  preservesInferenceTerm : preservesInference
  respectsCompositionTerm : respectsComposition

structure CombinedLogicEmbeddingEvidence {S T : CombinedLogicSignature}
    (E : CombinedLogicEmbedding S T) where
  preservesInferenceClosed : E.preservesInference
  respectsCompositionClosed : E.respectsComposition

def CombinedLogicEmbeddingClosed {S T : CombinedLogicSignature}
    (E : CombinedLogicEmbedding S T) : Prop :=
  E.preservesInference ∧ E.respectsComposition

theorem combined_logic_embedding_closed_from_evidence {S T : CombinedLogicSignature}
    (E : CombinedLogicEmbedding S T) (Ev : CombinedLogicEmbeddingEvidence E) :
    CombinedLogicEmbeddingClosed E := by
  exact And.intro Ev.preservesInferenceClosed Ev.respectsCompositionClosed

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse