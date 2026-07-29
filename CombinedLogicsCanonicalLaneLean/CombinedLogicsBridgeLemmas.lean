import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinedLogicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse
