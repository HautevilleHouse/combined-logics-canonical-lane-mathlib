import CombinedLogicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse