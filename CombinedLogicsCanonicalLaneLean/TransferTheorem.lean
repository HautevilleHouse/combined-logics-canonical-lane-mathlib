import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinedLogicsCanonicalLaneLean.CombinedLogicEmbedding

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure TransferTheoremPackage {S T : CombinedLogicSignature}
    (E : CombinedLogicEmbedding S T) where
  sourceClosure : Prop
  targetClosure : Prop
  transferCondition : Prop
  sourceClosureTerm : sourceClosure
  targetClosureTerm : targetClosure
  transferConditionTerm : transferCondition

structure TransferTheoremEvidence {S T : CombinedLogicSignature}
    {E : CombinedLogicEmbedding S T} (Tpkg : TransferTheoremPackage E) where
  sourceClosureClosed : Tpkg.sourceClosure
  targetClosureClosed : Tpkg.targetClosure
  transferConditionClosed : Tpkg.transferCondition

def TransferTheoremClosed {S T : CombinedLogicSignature}
    {E : CombinedLogicEmbedding S T} (Tpkg : TransferTheoremPackage E) : Prop :=
  Tpkg.sourceClosure ∧ Tpkg.targetClosure ∧ Tpkg.transferCondition

theorem transfer_theorem_closed_from_evidence {S T : CombinedLogicSignature}
    {E : CombinedLogicEmbedding S T} (Tpkg : TransferTheoremPackage E)
    (Ev : TransferTheoremEvidence Tpkg) : TransferTheoremClosed Tpkg := by
  exact And.intro Ev.sourceClosureClosed
    (And.intro Ev.targetClosureClosed Ev.transferConditionClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse