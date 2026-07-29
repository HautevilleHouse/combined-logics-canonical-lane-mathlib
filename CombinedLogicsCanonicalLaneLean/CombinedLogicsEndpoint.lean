import CombinedLogicsCanonicalLaneLean.FirstOrderLogicPackage

/-!
# Combined Logics Endpoint
-/

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedLogicsEndpointPackage where
  targetLogic : Type u
  combinedSoundness : Prop
  combinedCompleteness : Prop
  combinedInterpolation : Prop
  endpointMatchesStatement : Prop

structure CombinedLogicsEndpointEvidence (E : CombinedLogicsEndpointPackage) where
  combinedSoundnessClosed : E.combinedSoundness
  combinedCompletenessClosed : E.combinedCompleteness
  combinedInterpolationClosed : E.combinedInterpolation
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def CombinedLogicsEndpointClosed (E : CombinedLogicsEndpointPackage) : Prop :=
  E.combinedSoundness ∧ E.combinedCompleteness ∧ E.combinedInterpolation ∧ E.endpointMatchesStatement

theorem combined_logics_endpoint_closed_from_evidence (E : CombinedLogicsEndpointPackage) (Ev : CombinedLogicsEndpointEvidence E) :
    CombinedLogicsEndpointClosed E := by
  exact And.intro Ev.combinedSoundnessClosed (And.intro Ev.combinedCompletenessClosed (And.intro Ev.combinedInterpolationClosed Ev.endpointMatchesStatementClosed))

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse